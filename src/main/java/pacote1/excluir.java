package pacote1;

import java.io.IOException;
import java.util.Vector;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "excluir", urlPatterns = {"/excluir"})
public class excluir extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8"); 
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //obtendo a sessão do usuário
        HttpSession session = request.getSession();
        //procura na sessão o vetor de produtos (carrinho de compras)
        Vector carrinho = (Vector) session.getAttribute("carrinho");
        int id = Integer.parseInt(request.getParameter("id"));
        //remove a linha
        carrinho.remove(id);
        if (carrinho.size() != 0) { //se o vetor ainda tiver algum registro
            //segue para a pagina carrinho.jsp
            response.sendRedirect("carrinho.jsp");
        } else {
            //segue para a pagina index.jsp
            response.sendRedirect("index.jsp");
        }
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
