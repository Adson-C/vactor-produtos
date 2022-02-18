package br.com.ads.connection;

import java.sql.Connection;
import java.sql.DriverManager;

public class SingleConnectionBanco {
	
	private static String banco = "jdbc:postgresql://ec2-54-83-21-198.compute-1.amazonaws.com:5432/db34cj1dhsbemh?sslmode=require&autoReconnect=true";
	private static String user = "hspfawnfioltzk";
	private static String senha = "ad4104954c06fa101df9cc8659a019db419b6e234ffc956cb2aeb52b1dad05ae";
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
