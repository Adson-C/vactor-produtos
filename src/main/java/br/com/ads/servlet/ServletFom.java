package br.com.ads.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.ads.dao.DAOProdutorepository;
import br.com.ads.model.ProdutoModel;

@WebServlet("/ServletFom")
public class ServletFom extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private DAOProdutorepository daoProdutorepository = new DAOProdutorepository();
	public ServletFom() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		 String id =  request.getParameter("id");
		 String descricao = request.getParameter("descricao");
		 String valor = request.getParameter("valor");
		 
		 ProdutoModel produtoModel = new ProdutoModel();
		 produtoModel.setId(Long.parseLong(id));
		 produtoModel.setDescricao(descricao);
		 produtoModel.setValor(Double.valueOf(valor));
		 
		 try {
			daoProdutorepository.gravar(produtoModel);
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
