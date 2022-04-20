<%-- 
    Document   : calcI
    Created on : 18/04/2022, 21:07:50
    Author     : paulo.joao
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
            section{
                height: 362px;
                width: 270px;
                background-color: #FFDB0A;
                margin: 50px auto;
                padding: 10px;
                border: 3px solid #606060;
                border-radius: 5px;
            }
            #visor{
                height: 70px;
                width: auto;
                margin: 10px 10px 20px 10px;
                background-color: #fbfbfb;
                border: 3px solid #606060;
                border-radius: 5px;
            }
            #visor input{
                height: 20px;
                width: 223px;
                margin: 5px;
                padding: 20px 5px;
                font-size: 20px;
                text-align: right;
                color: #303030;
                font-family: monospace;
                font-weight: bolder;
                background-color: fbfbfb;
                border: none;
            }
            #teclado{
                height: 240px;
                width: auto;
                padding-left: 2px; 
                margin: 10px;
                background-color: #808080;
                border: 3px solid #606060;
                border-radius: 5px;
            }
            #teclado button{
                height: 50px;
                width: 50px;
                background: #303030;
                margin: 5px;
                float: left;
                border-radius: 5px;
            }
        </style>
        <main>
            <h4><a href="index.html">Voltar</a></h4>
            <H1>Calculadora Intermediária</H1>
            <section>
                <div id="visor">
                    <input type="text" id="text" disabled/>
                </div>
                <div id="teclado">
                    <button type="button" onclick="operacao('som'), verificarValores()">+</button>
                    <button type="button" onclick="escreve(1), verificarValores()">1</button>
                    <button type="button" onclick="escreve(2), verificarValores()">2</button>
                    <button type="button" onclick="escreve(3), verificarValores()">3</button><br>
                    <button type="button" onclick="operacao('sub'), verificarValores()">-</button>
                    <button type="button" onclick="escreve(4), verificarValores()">4</button>
                    <button type="button" onclick="escreve(5), verificarValores()">5</button>
                    <button type="button" onclick="escreve(6), verificarValores()">6</button><br>
                    <button type="button" onclick="operacao('mul'), verificarValores()">*</button>
                    <button type="button" onclick="escreve(7), verificarValores()">7</button>
                    <button type="button" onclick="escreve(8), verificarValores()">8</button>
                    <button type="button" onclick="escreve(9), verificarValores()">9</button><br>
                    <button type="button" onclick="operacao('div'), verificarValores()">/</button>
                    <button type="button" onclick="limpar(), verificarValores()">C</button>
                    <button type="button" onclick="escreve(0), verificarValores()">0</button>
                    <button type="button" onclick="calcular(num1, num2, ope), verificarValores()">=</button>
                </div>
            </section>
        </main>
        <script>
            var conta = '', num1 = '', num2 = '', ope = '', res = '0';
            function escreve(num){
                if(res == ''){
                    num1 = '';
                    num2 = '';
                    ope = '';
                    conta = '';
                }
                if(ope == ''){
                    num1 += num;
                    res = '0';
                }else{
                    num2 += num;
                    res = '0';
                }
                conta += num;
                document.getElementById("text").value = conta;
            }
            function operacao(op){
                switch(op){
                    case 'som':
                        conta += '+'
                        ope = '+';
                        break;
                    case 'sub':
                        conta += '-';
                        ope = '-';
                        break;
                    case 'mul':
                        conta += '*';
                        ope = '*';
                        break;
                    case 'div':
                        conta += '/';
                        ope = '/';
                        break;
                }
                document.getElementById("text").value = conta;
            }
            function calcular(num1, num2, ope){
                num1C = parseInt(num1);
                num2C = parseInt(num2);
                switch(ope){
                    case '+':
                        res = num1C + num2C;
                        break;
                    case '-':
                        res = num1C - num2C;
                        break;
                    case '*':
                        res = num1C * num2C;
                        break;
                    case '/':
                        res = num1C / num2C;
                        break;
                }
                document.getElementById("text").value = res;
                conta = '';
                res = '';
            }
            function limpar(){
                    conta = '';
                    num1 = '';
                    num2 = '';
                    ope = '';
                    res = '';
                document.getElementById("text").value = conta;
            }
            function verificarValores(){
                console.log("------------");
                console.log("conta: " + conta);
                console.log("num1: " + num1);
                console.log("num2: " + num2);
                console.log("ope: " + ope);
                console.log("res: " + res);
            }
        </script>
    </body>
</html>
