<%@ page import="Database.Variable_Brand"%>
<%@ page import="Database.Variable_Category"%>
<%@ page import="CRUD.Get_Value" %>
<%@ page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
  <title>Add Product Form</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel = "stylesheet" type = "text/css" href = "/Inventory/Css/Inventory_AddProduct.css" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700" rel="stylesheet">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
</head>

<body>

  <div class="testbox">

    <form action="/IMS/CONTROLLER/Add_Product.jsp">

      <fieldset>
      <legend>Add Product</legend>
      
      <div>
        <label for="name">Acquisition Date<span>*</span></label>
        <div class="name-item">
          <input id="name" type="text" placeholder="AUTO GENERATED" readonly>
        </div>
      </div>

      <div class="item">
        <label for="pserial">Name<span>*</span></label>
        <input type="text" name="name" required>
      </div>  

      <div class="item">
        <label for="pserial">Quantity<span>*</span></label>
        <input type="number" name="quantity" id="GFG" onchange="SerialNumber()" required>
      </div>  

      <p id="serial"></p>

      <div class="item">
        <label for="pserial">Price<span>*</span></label>
        <input type="text" name="price" id="pserial" required>
      </div>  

		<div class="item">
          <label for="name">Brand<span>*</span></label>

          <div class="name-item">
            <div class="loc">
              <select name="brand" required>
                <option selected value="" disabled selected class="city">---SELECT---</option>
<%

Get_Value obj_Get_Value = new Get_Value();

List<Variable_Brand> list = obj_Get_Value.Brand();

Iterator<Variable_Brand> it_list = list.iterator();

while (it_list.hasNext()) {
	
	Variable_Brand obj_Variable_Brand = new Variable_Brand();
	
	obj_Variable_Brand = it_list.next();
	
%>	

	<option value="<%=obj_Variable_Brand.getBrand() %>"><%=obj_Variable_Brand.getBrand() %></option>
	
<%
	
}
	
%>
              </select>
            </div>
          </div>  
         </div>

		<div class="item">
          <label for="name">Category<span>*</span></label>

          <div class="name-item">
            <div class="loc">
              <select name="category" required>
                <option selected value="" disabled selected class="city">---SELECT---</option>
<%

Get_Value obj_Get_Value1 = new Get_Value();

List<Variable_Category> list1 = obj_Get_Value1.Category();

Iterator<Variable_Category> it_list1 = list1.iterator();

while (it_list1.hasNext()) {
	
	Variable_Category obj_Variable_Category = new Variable_Category();
	
	obj_Variable_Category = it_list1.next();
	
%>	

	<option value="<%=obj_Variable_Category.getCategory() %>"><%=obj_Variable_Category.getCategory() %></option>
	
<%
	
}
	
%>
              </select>
            </div>
          </div>  
         </div>

		<div class="item">
          <label for="name">Status<span>*</span></label>
          <div class="name-item">
            <div class="loc">
              <select name="status" required>
                <option selected value="" disabled selected class="city">---SELECT---</option>
<%

Get_Value obj_Get_Value2 = new Get_Value();

List<Variable_Category> list2 = obj_Get_Value.Status();

Iterator<Variable_Category> it_list2 = list2.iterator();

while (it_list2.hasNext()) {
	
	Variable_Category obj_Variable_Category = new Variable_Category();
	
	obj_Variable_Category = it_list2.next();
	
%>	

	<option value="<%=obj_Variable_Category.getStatus() %>"><%=obj_Variable_Category.getStatus() %></option>
	
<%
	
}
	
%>
              </select>
            </div>
          </div>  
         </div>

        <a class="cancel" href="/IMS/INVENTORY/Brand.jsp">Cancel</a>
        <button type="submit" class="addorder">Add Product</button>
        
      </fieldset>

    </form>

  </div> 

<script> 

function SerialNumber() { 
    var i = document.getElementById("GFG").value; 

    var text = "";
    while (i > 0) {

        text += i + "<input type='text' name='SERIALNUMBER" + i + "'><br>";
        i--;
    }

    document.getElementById("serial").innerHTML = "<form action='BRYAN.html'>" + text + "<input type='hidden' value='SUBMIT'>";

} 
    
</script> 

</body>
</html>
