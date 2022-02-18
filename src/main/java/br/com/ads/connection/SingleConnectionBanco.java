package br.com.ads.connection;

import java.sql.Connection;
import java.sql.DriverManager;

public class SingleConnectionBanco {
	
	private static String banco = "jdbc:postgresql://ec2-44-192-245-97.compute-1.amazonaws.com:5432/d5r8g15fuagl8e?sslmode=require&autoReconnect=true";
	private static String user = "ksvgnlbldxudan";
	private static String senha = "be47fc16049b92a6cb404e076fc19a6a034d7a7deac6d7d8e960c7b599d8d007";
	private static Connection connection = null;
	
	public static Connection getConnection() {
		return connection;
	}
	
	static {
		conectar();
	}
	
	public SingleConnectionBanco() { // quando tiver um instancia vai conectar
		conectar();
	}
	
	
	private static void conectar() {
		try {
			
			if (connection == null) {
				
				Class.forName("org.postgresql.Driver"); // carreaga o driver de concxao do banco
				connection = DriverManager.getConnection(banco, user, senha);
				connection.setAutoCommit(false); // para nao afetuar alterações no banco
				
			}
			
		} catch (Exception e) {
			e.printStackTrace(); // Mostrar qualquer erro na coxecçao
		}
	}

}
