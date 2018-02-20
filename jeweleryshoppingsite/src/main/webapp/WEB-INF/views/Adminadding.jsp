<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<title>Admin Adding</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <style>
  body {
  padding : 10px ;
  
}

#exTab1 .tab-content {
  color : black;
  background-color: #428bca;
  padding : 5px 15px;
}

#exTab2 h3 {
  color : white;
  background-color: #428bca;
  padding : 5px 15px;
}

/* remove border radius for the tab */

#exTab1 .nav-pills > li > a {
  border-radius: 0;
}

/* change border radius for the tab , apply corners on top*/

#exTab3 .nav-pills > li > a {
  border-radius: 4px 4px 0 0 ;
}

#exTab3 .tab-content {
  color : white;
  background-color: #428bca;
  padding : 5px 15px;
}


  </style>
</head>
<body>

<div class="container"><h1>Admin Page  </h1></div>
<div id="exTab1" class="container">	
<ul  class="nav nav-pills">
			<li class="active">
      
			<li><a href="#3a" data-toggle="tab">Product</a>
			</li>
			<li><a href="#2a" data-toggle="tab">Category</a>
			</li>
  		<li><a href="#1a" data-toggle="tab">Supplier</a>
			</li>
		</ul>

			<div class="tab-content clearfix">
			  <div class="tab-pane active" id="1a">
        <div class="container">
  <h2>Supplier Form</h2>
  <form action="#">
 <div class="form-group">
    <label><b>Supplier Id</b></label>
    <input type="text" placeholder="Enter Supplier Id" name="sid" required></div>
<div class="form-group">
    <label><b>Supplier Name</b></label>
    <input type="text" placeholder="Enter Supplier Name" name="sname" required></div>
<div class="form-group">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" value="OK">
     <input type="submit" value="CANCEL">
    </div>
    </div> 
  </div>
</form>
				
				<div class="tab-pane" id="2a">
          <div class="container">
  <h2>Category Form</h2>
  <form action="#">
 <div class="form-group">
    <label><b>Category Id</b></label>
    <input type="text" placeholder="Enter Category Id" name="cid" required></div>
<div class="form-group">
    <label><b>Category Name</b></label>
    <input type="text" placeholder="Enter Category Name" name="cname" required></div>
<div class="form-group">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" value="OK">
     <input type="submit" value="CANCEL">
    </div>
    </div> 
  </div>
</form>
				
        <div class="tab-pane" id="3a">
          <div class="container">
  <h2>Product Form</h2>
  <form action="#">
 <div class="form-group">
    <label><b>Product Id</b></label>
    <input type="text" placeholder="Enter Product Id" name="pid" required></div>
<div class="form-group">
    <label><b>Product Name</b></label>
    <input type="text" placeholder="Enter Product Name" name="pname" required></div>
<div class="form-group">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" value="OK">
     <input type="submit" value="CANCEL">
    </div>
    </div> 
  </div>
</form>
				
          
  </div>
</body>
</html>