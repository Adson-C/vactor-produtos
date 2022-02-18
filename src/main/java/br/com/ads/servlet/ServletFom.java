package br.com.ads.servlet;

import java.io.IOException;
import java.io.PrintWriter;

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
		
		
		
		doPost(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		try {
		
		 String id =  request.getParameter("id");
		 String descricao = request.getParameter("descricao");
		 String valor = request.getParameter("valor");
		 
		 PrintWriter writer = response.getWriter();
			writer.println("Id: " + id);
			writer.println("Descrição: " + descricao);
			writer.println("Valor: " + valor);
			writer.flush();
		 
		 ProdutoModel produtoModel = new ProdutoModel();
		 produtoModel.setId(id != null && !id.isEmpty() ? Long.parseLong(id) : null);
		 produtoModel.setDescricao(descricao);
		 produtoModel.setValor(Double.valueOf(valor));

		 daoProdutorepository.gravar(produtoModel);
		 
		 request.setAttribute("produtomodel", produtoModel);

		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	

}
