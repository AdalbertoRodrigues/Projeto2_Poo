<%-- 
    Document   : amortizacao-constante
    Created on : 08/09/2017, 16:09:28
    Author     : Adalberto
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="WEB-INF/jspf/header.jspf" %>
    <body>
        <%@include file="WEB-INF/jspf/menu.jspf" %>
        <%
            double c = 0.01, i = 0.1, p = 1;
            if(request.getParameter("sendForm") != null) 
            {
                c = Double.parseDouble(request.getParameter("c"));
                i = Double.parseDouble(request.getParameter("i"));
                p = Double.parseDouble(request.getParameter("p"));
            }   
        %>
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h1 class="mt-5">Cálculo de Amortização Constante</h1>
                    <br><p>No sistema de amortização constante, a cada mês, a parcela corresponde à amortização acrescida dos juros aplicados sobre o saldo devedor. Este é um dos tipos de sistema de amortização utilizados em financiamentos imobiliários.</p>
                    <br>
                    <form>
                        Valor do empréstimo :
                        <input type="number" value=<%=c%> step="0.01" min="0.01" style="margin-right: 1%" name="c" required>
                        Taxa de juros(%.a.m):
                        <input type="number" value="<%=i%>" step="any" style="margin-right: 1%" name="i" required="">
                        Periodo(meses):
                        <input type="number" value="<%=(int)p%>" min="1" style="margin-right: 1%" name="p" required>
                        <input type="submit" value="Calcular" name="sendForm">
                    </form>
                </div>
            </div>
            
        </div>
        <%@include file="WEB-INF/jspf/footer.jspf" %>
    </body>
</html>
