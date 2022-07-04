<form>
    <a href="carrinho.jsp">
        <input type="button" value="CARRINHO">
    </a>
</form>
<table style="border: #000 2px solid;" align="center" cellspacing="0" border="0">
    <tr style="background: #555555; color: white; padding: 0; margin: 0 auto">
        <td>
            <a>ITEM</a>
        </td>
        <td>
            <a>NOME</a>
        </td>
        <td>
            <a>VALOR</a>
        </td>
        <td>
            <a>COMPRAR</a>
        </td>
        <td>
            <a>DESCRIÇÃO</a>
        </td>
    </tr>
    <!-- Repetindo a tr para lista de produtos -->
    <tr>
        <td>
            <a>
                0001
            </a>
        </td>
        <td>
            <a>
                Introdução a linguagem SQL
            </a>
        </td>
        <td style="text-align: left">
            <a>
                R$ 1,00
            </a>
        </td>
        <td>
            <form>
                <a href="incluir?nome=PRODUTO 0001&valor=1">
                    <input type="button" value="ADICIONAR AO CARRINHO">
                </a>
            </form>
            <!--<a href="incluir?nome=PRODUTO 0001&valor=1">ADICIONAR AO CARRINHO</a>-->
        </td>
         <td>
            <form>
                <a href="introducao-a-linguagem-sql.jsp">
                    <input type="button" value="DETALHES">
                </a>
            </form>
            <!--<a href="incluir?nome=PRODUTO 0001&valor=1">ADICIONAR AO CARRINHO</a>-->
        </td>
    </tr>
    <!-- repetir a tr para a lista de produtos -->
   
    
</table>