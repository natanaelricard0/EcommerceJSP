package pacote1;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Vector;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "incluir", urlPatterns = {"/incluir"})
public class incluir extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
    }

 
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //obtendo sessão do usuário
        HttpSession session = request.getSession();
        //procura na sessão o vetor de produtos (carrinho de compras)
        Vector carrinho = (Vector) session.getAttribute("carrinho");
        //se for o primeiro acesso, não há ainda carrinho de compras na sessão
        //o carrinho de compras então é criado e adicionado
        if (carrinho == null) {
            carrinho = new Vector();
            session.setAttribute("carrinho",carrinho);
        }
        //Adiciona o produto no vetor (carrinho de compras)
        String nome = request.getParameter("nome:");
        double preco = Double.parseDouble(request.getParameter("valor"));
        //Utiliza a class produto para adicionar ao carrinho uma compra
        Produto p = new Produto(nome, preco);
        carrinho.add(p);
        //segue para a pagina carrinho.jsp
        response.sendRedirect("carrinho.jsp");

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
