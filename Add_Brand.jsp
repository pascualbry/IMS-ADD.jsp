<%@ page import="Database.Variable_Category"%>
<%@ page import="CRUD.Get_Value" %>
<%@ page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
  <title>Add Brand Form</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel = "stylesheet" type = "text/css" href = "/Inventory/Css/Inventory_AddProduct.css" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700" rel="stylesheet">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
</head>

<body>

  <div class="testbox">

    <form action="/IMS/CONTROLLER/Add_Brand.jsp">

      <fieldset>
      <legend>Add Brand</legend>

      <div>
        <label for="name">Acquisition Date<span>*</span></label>
        <div class="name-item">
          <input id="name" type="text" placeholder="09/23/2019" readonly>
        </div>
      </div>

      <div class="item">
        <label for="pserial">Brand<span>*</span></label>
        <input type="text" name="brand" id="pserial" required>
      </div>  

		<div class="item">
          <label for="name">Status<span>*</span></label>
          <div class="name-item">
            <div class="loc">
              <select name="status" required>
                <option selected value="" disabled selected class="city">---SELECT---</option>
<%

Get_Value obj_Get_Value = new Get_Value();

List<Variable_Category> list = obj_Get_Value.Status();

Iterator<Variable_Category> it_list = list.iterator();

while (it_list.hasNext()) {
	
	Variable_Category obj_Variable_Category = new Variable_Category();
	
	obj_Variable_Category = it_list.next();
	
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

</body>
</html>
