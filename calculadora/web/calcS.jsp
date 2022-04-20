<%-- 
    Document   : calcS
    Created on : 18/04/2022, 19:33:44
    Author     : paulo.joao
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Calculadora Simples</title>
    </head>
    <body>
        <style>
            *{
                color: #ffffff;
            }
            body{
                background-color: #303030;
            }
            main{
                width: 500px;
                height: 100%;
                margin: 0px auto 0px auto ;
                border-color: #FFDB0A;
                border-radius: 8px
            }
            a{
                text-decoration: none;
                transition: .5s;
            }
            h1, h2, h4, a:hover{
                color: #FFDB0A;
            }
            h1, h2, h3, h4{
                width: 100%;
                text-align: center;
            }
            form{
                margin: auto;
                width: 200px;
            }
            form *{
                width: 200px;
                margin: 5px auto;
            }
            .button{
                color: #FFDB0A;
                background-color: #606060
            }
            input, option, select{
                color: #000000
            }
        </style>
        <main>
            <h4><a href="index.html">Voltar</a></h4>
            <H1>Calculadora Simples</H1>
            <form action="#">
                <input type="number" placeholder="Escreva o primeiro número:" name="num1">
                <input type="number" placeholder="Escreva o segundo número:" name="num2">
                <select name="operacao">
                    <option disabled value="#">Selecione uma operação</option>
                    <option value="som">Somar</option>
                    <option value="sub">Subtrair</option>
                    <option value="mul">Multiplicar</option>
                    <option value="div">Dividir</option>
                </select>
            <input type="submit" value="CALCULAR" class="button">
            </form>
            <h2>Resultado:</h2>
            <c:if test="${param.operacao == 'som'}">
                <h3><c:out value="${param.num1 + param.num2}"></c:out></h3>
            </c:if>
            <c:if test="${param.operacao == 'sub'}">
                 <h3><c:out value="${param.num1 - param.num2}"></c:out></h3>
            </c:if>
            <c:if test="${param.operacao == 'mul'}">
                <h3><c:out value="${param.num1 * param.num2}"></c:out></h3>
            </c:if>
            <c:if test="${param.operacao == 'div'}">
                 <h3><c:out value="${param.num1 / param.num2}"></c:out></h3>
            </c:if>
        </main>
    </body>
</html>