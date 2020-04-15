<%@ page import="Database.Variable_Brand"%>
<%@ page import="Database.Variable_Category"%>
<%@ page import="Database.Variable_Product"%>
<%@ page import="CRUD.Get_Value" %>
<%@ page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
  <title>Add Order Form</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel = "stylesheet" type = "text/css" href = "/Inventory/Css/Inventory_AddProduct.css" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700" rel="stylesheet">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</head>

<body>

  <div class="testbox">

    <form action="/IMS/ADD/Add_Order.jsp?">

      <fieldset>
      <legend>Add Product</legend>
      
      <div>
        <label>Acquisition Date<span>*</span></label>
        <div class="name-item">
          <input id="name" type="text" placeholder="09/23/2019" readonly>
        </div>
      </div>

      <div class="item">
        <label>Client Name<span>*</span></label>
        <input type="text" name="clientName" required>
      </div>  

      <div class="item">
        <label>Contact Number<span>*</span></label>
        <input type="text" name="contactNumber" required>
      </div>
      
		<table id="myTable"><tr><td>
          <label>Product<span>*</span></label>
              <select id="GFG1" onchange="Product()" required>
                <option selected value="" disabled selected class="city">---SELECT---</option>
<%

Get_Value obj_Get_Value3 = new Get_Value();

List<Variable_Product> list3 = obj_Get_Value3.Product();

Iterator<Variable_Product> it_list3 = list3.iterator();

while (it_list3.hasNext()) {
	
	Variable_Product obj_Variable_Product = new Variable_Product();
	
	obj_Variable_Product = it_list3.next();
	
%>	

	<option value="<%=obj_Variable_Product.getPrice() %>"><%=obj_Variable_Product.getName() %></option>
	
<%

}

%>
              </select> </td><td>

		      <div class="item">
		        <label>Quantity<span>*</span></label>
		        <input type="number" id="QUANTITY1" onchange="Total()" name="quantity1" step="1" min="1" max="20" required>    	      
		      </div></td><td>
		      
		      <div class="item">
		        <label>Price<span>*</span></label>
		        <input type="number" id="price1" name="price1" readonly="readonly">
		        <input type="hidden" id="product1" name="product1" readonly="readonly">
		      </div> </td><td>
		      
		      <div class="item">
		        <label>Total<span>*</span></label>
		        <input type="number" id="total1" name="total1" onchange="TOTAL()" readonly="readonly">
		      </div></td></tr>
         
         <tr><td>
          <label>Product<span>*</span></label>
              <select id="GFG2" onchange="Product()" required>
                <option selected value="" disabled selected class="city">---SELECT---</option>
<%

Get_Value obj_Get_Value4 = new Get_Value();

List<Variable_Product> list4 = obj_Get_Value4.Product();

Iterator<Variable_Product> it_list4 = list4.iterator();

while (it_list4.hasNext()) {
	
	Variable_Product obj_Variable_Product = new Variable_Product();
	
	obj_Variable_Product = it_list4.next();
	
%>	

	<option value="<%=obj_Variable_Product.getPrice() %>"><%=obj_Variable_Product.getName() %></option>
	
<%
	
}
	
%>
              </select> </td><td>

		      <div class="item">
		        <label>Quantity<span>*</span></label>
		        <input type="number" id="QUANTITY2" onchange="Total()" name="quantity2" step="1" min="1" max="20" required>
		      </div></td><td>
		      
		      <div class="item">
		        <label>Price<span>*</span></label>
		        <input type="number" id="price2" name="price2" readonly="readonly">
		        <input type="hidden" id="product2" name="product2" readonly="readonly">
		      </div> </td><td>
		      
		      <div class="item">
		        <label>Total<span>*</span></label>
		        <input type="number" id="total2" name="total2" onchange="TOTAL()" readonly="readonly">
		      </div></td><td>
		      
				<button onclick="myFunction1()">Delete</button>
		      </td></tr>
         
         
         
         <tr><td>
          <label>Product<span>*</span></label>
              <select id="GFG3" onchange="Product()" required>
                <option selected value="" disabled selected class="city">---SELECT---</option>
<%

Get_Value obj_Get_Value5 = new Get_Value();

List<Variable_Product> list5 = obj_Get_Value5.Product();

Iterator<Variable_Product> it_list5 = list5.iterator();

while (it_list5.hasNext()) {
	
	Variable_Product obj_Variable_Product = new Variable_Product();
	
	obj_Variable_Product = it_list5.next();
	
%>	

	<option value="<%=obj_Variable_Product.getPrice() %>"><%=obj_Variable_Product.getName() %></option>
	
<%
	
}
	
%>
              </select> </td><td>

		      <div class="item">
		        <label>Quantity<span>*</span></label>
		        <input type="number" id="QUANTITY3" onchange="Total()" name="quantity3" step="1" min="1" max="20" required>
		      </div></td><td>
		      
		      <div class="item">
		        <label>Price<span>*</span></label>
		        <input type="number" id="price3" name="price3" readonly="readonly">
		        <input type="hidden" id="product3" name="product3" readonly="readonly">
		      </div> </td><td>
		      
		      <div class="item">
		        <label>Total<span>*</span></label>
		        <input type="number" id="total3" name="total3" onchange="TOTAL()" readonly="readonly">
		      </div></td><td>
		      
				<button onclick="myFunction1()">Delete</button>
		      </td></tr>
         
		</table>
		      
      <div class="item">
        <label>Total<span>*</span></label>
        <input type="number" id="total" name="total" readonly="readonly">
      </div>   

        <a class="cancel" href="/IMS/INVENTORY/Brand.jsp">Cancel</a>
        <button type="submit" class="addorder">Add Product</button>
        
      </fieldset>

    </form>

  </div>


<script>

function myFunction1() {
	
  document.getElementById("myTable").deleteRow(1);
  
}

$(function(){
	$("#GFG1").change(function(){
		var product = $("#GFG1 option:selected").text();		
		$("#product1").val(product);
	})
})

$(function(){
	$("#GFG2").change(function(){
		var product = $("#GFG2 option:selected").text();		
		$("#product2").val(product);
	})
})

$(function(){
	$("#GFG3").change(function(){
		var product = $("#GFG3 option:selected").text();		
		$("#product3").val(product);
	})
})

function Product() { 

    document.getElementById("price1").setAttribute('value',document.getElementById("GFG1").value);
    document.getElementById("price2").setAttribute('value',document.getElementById("GFG2").value);
    document.getElementById("price3").setAttribute('value',document.getElementById("GFG3").value);

} 

function Total() { 
	
	var x1 = document.getElementById("GFG1").value;	
	var y1 = document.getElementById("QUANTITY1").value;	
	var z1 = x1 * y1;	
	document.getElementById("total1").setAttribute('value',z1);
	document.getElementById("total").setAttribute('value',z1);
	
	var x2 = document.getElementById("GFG2").value;	
	var y2 = document.getElementById("QUANTITY2").value;	
	var z2 = x2 * y2;
	document.getElementById("total2").setAttribute('value',z2);
	document.getElementById("total").setAttribute('value',z2);
	
	var x3 = document.getElementById("GFG3").value;	
	var y3 = document.getElementById("QUANTITY3").value;
	var z3 = x3 * y3;	
	document.getElementById("total3").setAttribute('value',z3);
	document.getElementById("total").setAttribute('value',z3);

	var total = z1 + z2 + z3;
	
	document.getElementById("total").setAttribute('value',total);
	
} 

</script> 

</body>
</html>
