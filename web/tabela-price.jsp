<%-- 
    Document   : tabela-price
    Created on : 09/09/2017, 00:03:59
    Author     : Marjorie
--%>


<%@page import="java.text.DecimalFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="WEB-INF/jspf/header.jspf" %>
    <body>
        <%@include file="WEB-INF/jspf/menu.jspf" %>
        <%
            double c = 0.01, i = 0.1, n = 1;
             boolean b = false;
            if(request.getParameter("enviar") != null) 
            { try{
                c = Double.parseDouble(request.getParameter("c"));
                i = Double.parseDouble(request.getParameter("i"));
                n = Double.parseDouble(request.getParameter("n"));
            }catch (Exception ex){
            b=true;
            }
            }   
        %>
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h1 class="mt-5">Cálculo de Amortização Francês (Price)</h1>
                    <br><p>O sistema francês de amortização, é um método usado em amortização de empréstimo cuja principal característica 
                        é apresentar prestações iguais. A tabela Price usa o regime de juros compostos para calcular o valor das parcelas 
                        de um empréstimo e, dessa parcela, há uma proporção relativa ao pagamento de juros e amortização do valor emprestado.
                       O valor das parcelas pode ser calculado pela fórmula: pmt= (c*i)/(1-(1/(1+i)^n)).</p>                                        
                    <br>
                    <form>
                        Valor do empréstimo :
                        <input type="number" value=<%=c%> step="0.01" min="0.01" style="margin-right: 1%" name="c" required>
                        Taxa de juros(%.a.m):
                        <input type="number" value="<%=i%>" step="any" style="margin-right: 1%" name="i" required="">
                        Periodo(meses):
                        <input type="number" value="<%=(int)n%>" min="1" style="margin-right: 1%" name="n" required>
                        <input type="submit" value="Calcular" name="enviar">
                    </form>
                    <br>
                     <%if(b == false){
                    %>
                    <%if(request.getParameter("enviar") != null){ 
                        double aux=i/100, a=0, at = 0, juros = 0, jurosTotal = 0, pmt=(c*aux)/(1- (1/(Math.pow(1+aux,n)))) , pmtt = 0;
                  
                     %>
                    
                    
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
                            <%for(int y = 0; y < n; y++){
                                juros=c*(i/100);
                                a=pmt-juros;
                                c=c-a;
                                at=at+a;
                                jurosTotal=jurosTotal+juros;
                                pmtt=pmtt+pmt;                            
                              %>
                                <tr>
                                    <td><%=y+1%></td>
                                    <td><%=new DecimalFormat("0.00").format(pmt)%></td>
                                    <td><%=new DecimalFormat("0.00").format(juros)%></td>
                                    <td><%=new DecimalFormat("0.00").format(a)%></td>
                                    <td><%=new DecimalFormat("0.00").format(c)%></td>
                                </tr>
                            <%}%>
                            <tr>
                                <th class="text-center">Total</th>
                                <td><%=new DecimalFormat("0.00").format(pmtt)%></td>
                                <td><%=new DecimalFormat("0.00").format(jurosTotal)%></td>
                                <td><%=new DecimalFormat("0.00").format(at)%></td>
                                <td>-</td>
                            </tr>
                        </table>
                    <%}
                    } else 
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
