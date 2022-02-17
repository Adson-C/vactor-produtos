package br.com.ads.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import br.com.ads.connection.SingleConnectionBanco;
import br.com.ads.model.ProdutoModel;

public class DAOProdutorepository {

	private Connection connection;

	public DAOProdutorepository() {

		connection = SingleConnectionBanco.getConnection();
	}

	public ProdutoModel gravar(ProdutoModel obj) throws Exception {

		String sql = "INSERT INTO produto_model(id, descricao, valor) VALUES (?,?,?);";

		PreparedStatement pdSql = connection.prepareStatement(sql);

		pdSql.setLong(1, obj.getId());
		pdSql.setString(2, obj.getDescricao());
		pdSql.setDouble(3, obj.getValor());

		pdSql.execute();

		connection.commit();
		return obj;

	}

}
