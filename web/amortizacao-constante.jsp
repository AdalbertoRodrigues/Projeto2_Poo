<%-- 
    Document   : amortizacao-constante
    Created on : 08/09/2017, 16:09:28
    Author     : Adalberto
--%>

<%@page import="java.text.DecimalFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="WEB-INF/jspf/header.jspf" %>
    <body>
        <%@include file="WEB-INF/jspf/menu.jspf" %>
        <%
            double c = 0.01, i = 0.1, p = 1;
            boolean a = false;
            if(request.getParameter("sendForm") != null) 
            {
                try 
                {
                    c = Double.parseDouble(request.getParameter("c"));
                    i = Double.parseDouble(request.getParameter("i"));
                    p = Double.parseDouble(request.getParameter("p"));
                }
                catch(Exception ex) 
                {
                    a = true;
                }   
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
                    <br>
                    <%if(a == false){
                    %>
                        <%if(request.getParameter("sendForm") != null){double amort = c/p, j = 0, jtotal = 0, prest = 0, presttotal = 0, amorttotal = c;%>
                            <table class="table table-striped table-bordered table-hover">
                                <tr>
                                    <th class="text-center">Período</th>
                                    <th class="text-center">Prestação</th>
                                    <th class="text-center">Juros</th>
                                    <th class="text-center">Amortização</th>
                                    <th class="text-center">Saldo Devedor</th>
                                </tr>
                                <tr>
                                    <td>0</td>
                                    <td>-</td>
                                    <td>-</td>
                                    <td>-</td>
                                    <td><%=new DecimalFormat("0.00").format(c)%></td>
                                </tr>
                                <%for(int x = 0; x < p; x++){
                                    j = c * (i/100);
                                    jtotal += j;
                                    prest = amort + j;
                                    presttotal += prest;
                                    c -= amort;
                                %>
                                    <tr>
                                        <td><%=x+1%></td>
                                        <td><%=new DecimalFormat("0.00").format(prest)%></td>
                                        <td><%=new DecimalFormat("0.00").format(j)%></td>
                                        <td><%=new DecimalFormat("0.00").format(amort)%></td>
                                        <td><%=new DecimalFormat("0.00").format(c)%></td>
                                    </tr>
                                <%}%>
                                <tr>
                                    <th class="text-center">Total</th>
                                    <td><%=new DecimalFormat("0.00").format(presttotal)%></td>
                                    <td><%=new DecimalFormat("0.00").format(jtotal)%></td>
                                    <td><%=new DecimalFormat("0.00").format(amorttotal)%></td>
                                    <td>-</td>
                                </tr>
                            </table>
                            <%}
                        }
                        else 
                        {
                            out.println("<h1 style='color: red' class='text-center'>Ocorreu um erro</h1>"
                            + "<h2 style='color: red' class='text-center'>Por favor tente novamente</h2>");
                        }
                        %>
                        
                </div>
            </div>
            
        </div>
        <%@include file="WEB-INF/jspf/footer.jspf" %>
    </body>
</html>
