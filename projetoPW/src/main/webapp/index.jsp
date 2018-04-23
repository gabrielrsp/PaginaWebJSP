<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="utf-8"%>
<!doctype html>
<html lang="en">
 <head>
   <!-- Required meta tags -->
   <meta charset="utf-8">
   <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

   <!-- Bootstrap CSS -->
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

   <title>Calculo de IMC!</title>
 
 </head>
 <body>
   
  <style>
    body{
      background-color:#dddddd
    }
  </style>
  
    <fieldset>
   
   <form method = "GET" action = "index.jsp">
 
    <h1>Cálculo de IMC</h1>
    
    <div class="form-group row mx-sm-3 mb-2">
     
     <label for="idade" class="col-sm-1 col-form-label">Idade</label>
     <div class="col-sm-2">
      <input type="text" size="10" name= "idade">
     </div>
   </div>
   <div class="form-group row mx-sm-3 mb-2">
     <label for="metros" class="col-sm-1 col-form-label">Metros</label>
     <div class="col-sm-2">
        <input type="text" size="10" name= "metros">
     </div>
   </div>
   
    <div class="form-group row mx-sm-3 mb-2">
           <label for="centimetros" class="col-sm-1 col-form-label">Centímetros</label>
           <div class="col-sm-2">
              <input type="text" size="10" name= "centimetros">
           </div>
         </div>

     <div class="form-group row form-group mx-sm-3 mb-2">
           <label for="kilos" class="col-sm-1 col-form-label">Kilos</label>
           <div class="col-sm-2">
             <input type="text" size="10" name= "kilos">
     </div>
     </div>
     
      <%
    float kilos =  request.getParameter("kilos") != null ?  new Float(request.getParameter("kilos")) : 0f;
    float metros = request.getParameter("metros") != null ?  new Float(request.getParameter("metros")) : 0f;
    float centimetros = request.getParameter("centimetros") != null ?  new Float(request.getParameter("centimetros")) : 0f;
    float imc = request.getParameter("imc") != null ?  new Float(request.getParameter("imc")) : 0f;
    float altura= request.getParameter("altura") != null ?  new Float(request.getParameter("altura")) : 0f;
   
    altura = (metros*100 + centimetros)/100  ; 

    imc = kilos / (altura * altura) ;
            
    %>

  <!--Botão Calcular-->
   <div class="form-group row mx-sm-3 mb-1">
       <div class="col-sm-1">
            <input type="submit" value="calcular">
           </div>
             <div class="form-group row mx-sm-0 mb-3">
                   <label for="imc" class="col-sm-0 col-form-label">IMC:</label>
             <div class="col-sm-7">
                   <input type="text" class="form-control" name="imc"  value="<%=imc%>" disabled="disabled"/>
           </div>
       </div>
       
   </div>
    
</div>
    
   </form>
      
   </fieldset>
   
 <div>
     <h2>Avalie seus resultados</h2>
     <img src="http://www.maestrosaude.com.br/wp-content/uploads/2016/04/Tabela-imc-Calculo-imc-oms.jpg">
    
   </div>
</body>
</html>

