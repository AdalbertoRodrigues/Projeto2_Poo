<%-- 
    Document   : home
    Created on : 06/09/2017, 23:45:32
    Author     : Adalberto
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="WEB-INF/jspf/header.jspf" %>
    <body>
        <%@include file="WEB-INF/jspf/menu.jspf" %>
        
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h1 class="mt-5">Projeto Poo 2</h1>
                    <p class="lead">Cálculo de amortização de juros</p>
                    <p>Amortização é um processo de extinção de uma dívida através de pagamentos periódicos, que são realizados em função de um planejamento, de modo que cada prestação corresponde à soma do reembolso do capital ou do pagamento dos juros do saldo devedor, podendo ser o reembolso de ambos, sendo que os juros são sempre calculados sobre o saldo devedor. </p>
                    <p>Essa aplicação tem como objetivo calcular a amortização de uma divida utilizando os sistemas de amortização constante, americana e price.</p>
                    <br>
                    <div class="btns">
        		<a href="amortizacao-constante.jsp">Constante</a>
        		<a href="amortizacao-americana.jsp">Americana</a>
        		<a href="tabela-price.jsp">Price</a>
                    </div>
                    <hr>	
                </div>
            </div>
        </div>

    <div class="container">
      <div class="row">
        <div class="col-lg-12 text-center">
          <h1 class="mt-5">Equipe</h1><br>
        </div>
      </div>
      <div class="row">
        <div class="col-md-4">
          <center><img class="img-fluid rounded-circle" width="80%" src="res/imgs/member1.jpg"></center>
          <h4 class="text-center">Adalberto Rodrigues</h4>
          <center><a href=""><img class="img-fluid" width="50px" src="res/imgs/github.png"></a>
          <a href=""><img class="img-fluid" width="50px" src="res/imgs/facebook.png"></a>
          <a href=""><img class="img-fluid" width="50px" src="res/imgs/linkedin.png"></a></center>
        </div>
        <div class="col-md-4">
          <center><img class="img-fluid rounded-circle" width="80%" src="res/imgs/member2.jpg"></center>
          <h4 class="text-center">Fabricio Lima</h4>
          <center><a href=""><img class="img-fluid" width="50px" src="res/imgs/github.png"></a>
          <a href=""><img class="img-fluid" width="50px" src="res/imgs/facebook.png"></a>
          <a href=""><img class="img-fluid" width="50px" src="res/imgs/linkedin.png"></a></center>
        </div>
        <div class="col-md-4">
          <center><img class="img-fluid rounded-circle" width="80%" src="res/imgs/member3.jpg"></center>
          <h4 class="text-center">Marjorie Ribeiro</h4>
          <center><a href=""><img class="img-fluid" width="50px" src="res/imgs/github.png"></a>
          <a href=""><img class="img-fluid" width="50px" src="res/imgs/facebook.png"></a>
          <a href=""><img class="img-fluid" width="50px" src="res/imgs/linkedin.png"></a></center>
          <br>
          <br>
          <br>
        </div>
      </div>
    </div>
        
        <%@include file="WEB-INF/jspf/footer.jspf" %>
    </body>
</html>
