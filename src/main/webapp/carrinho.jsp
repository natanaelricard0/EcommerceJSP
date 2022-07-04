<%-- 
    carrinho.jsp
--%>

<%@page import="java.text.NumberFormat"%>
<%@page import="java.util.Vector"%>
<%@page import="pacote1.Produto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html"; charset="UTF-8">
        <title></title>
    </head>  
    <body>
        <form>
            <a href="./">
                <input type="button" value="VOLTAR AS COMPRAS">
            </a>
        </form>
        <table style="border: #000 2px solid;" align="center" cellspacing="0" border="0">
            <tr style="background: #555555; color: white; padding: 0; margin: 0 auto">
                <td>
                    <a>NOME</a>
                </td>
                <td>
                    <a>VALOR</a>
                </td>
                <td>
                    <a>EXCLUIR</a>
                </td>
            </tr>
            <%
            Vector carrinho = (Vector) session.getAttribute("carrinho");
            double total = 0;
            for (int cont = 0; cont < carrinho.size(); cont++) {
                    Produto p = (Produto) carrinho.get(cont);
                    total += p.getValor();
              
            %>
            
            <tr>
                <td>
                    <a>
                        <%=p.getNome()%>
                    </a>
                </td>
                <td style="text-align: left">
                    <a>
                       <%out.println(NumberFormat.getCurrencyInstance().format(p.getValor()));%> 

                    </a>
                </td>
                <td style="text-align: left">
                    <a>
                        <input type="button" onclick="window.open('excluir?id=<%= cont%>','_self')" value="EXCLUIR" />
                    </a>
                </td>
            </tr>
            <% 
                }
            %>
            <tr>
                <td colspan="2">
                    <a>
                        TOTAL GERAL
                    </a>
                </td>
                <td style="text-align: left">
                    <a>
                        <%out.println(NumberFormat.getCurrencyInstance().format(total)); %>
                    </a>
                </td>
            </tr>
        </table>
    
    </body>
</html>

        