package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class DAO {

	/** Modulo de Conexão*/
	//1) Parâmetros de conexão
	private String driver = "com.mysql.cj.jdbc.Driver";
	private String url = "jdbc:mysql://127.0.0.1:3306/agenda?useTimezone=true&serverTimezone=UTC";
	private String user = "root";
	private String password = "";
	
	//2) Método de conexão
	private Connection conectar() {
		Connection con = null;
		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url,user,password);
			return con;
		}
			catch (Exception e) {
				System.out.println(e);
				return null;
			}
		}
	/* CRUD CREATE*/
	public void inserirContato(JavaBeans contato) {
		String create = "insert into contatos(nome,fone,email) values (?,?,?)";
		
		try {
			Connection con = conectar();
			PreparedStatement pst = con.prepareStatement(create);
			
			//SUBSTITUIR ?,?,?
			pst.setString(1, contato.getNome());
			pst.setString(2, contato.getFone());

			pst.setString(3, contato.getEmail());
			
			pst.executeUpdate();
			
			con.close();
		}catch (Exception e) {
			System.out.println(e);
		}
	}
	/*
	//teste de conexão do banco de dados
	 public void testeConexao() {
		try {
			Connection con = conectar ();
			System.out.println(con);
			con.close();
			
		}	catch (Exception e) {
			System.out.println(e);
		}
	} */
}