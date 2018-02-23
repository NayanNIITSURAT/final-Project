<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>OnLine jewellery shopping</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<nav class="navbar navbar-inverse">
  <div  style="padding-bottom:0px;padding-top:0px; "  class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="index">OnLine jewellery shopping</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="index">Home</a></li>
      
        <li><a href="registration"> <span class="glyphicon glyphicon">Registration</span></a></li>
          <li ><a href="admin">Admin</a></li>
                         <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Category<span class="caret"></span></a> 
                    <ul class="dropdown-menu"> 
            
                      <li><a href=" ">ALL</a></li>
                    <c:forEach var="cat" items="${catlist}">
                   <li><a href="${pageContext.request.contextPath}/productdetails?cid=${cat.cid}">${cat.cname} </a></<c:out value="${cat.cname}"></c:out></a></li>
                  </c:forEach>
                 
                      </ul>   
                    </li>   

               
               <div class="nav navbar-nav navbar right">
               
               <!--<c:if test="${pageContext.request.userPrincipal.name==null} ">
               <li><a href="${pageContext.request.contextPath}/registration">Register</a></li>
               <li><a href="${pageContext.request.contextPath}/goTologin">login</a></li>
               </c:if>
               <c:if test="${pageContext.request.userPrincipal.name!=null}">
               <li><a >Welcome: ${pageContext.request.userPrincipal.name}</a></li>
               <li>
               <a href="<c:url value="/logout"/>">logout</a></li>
               <li>
               <a href="${ pageContext.request.contextPath}/goToCart">My cart</a></li>
               </c:if>
               </ul>
               </div>-->	
               <c:if test="${pageContext.request.userPrincipal.name != null}">
		<c:out value="${SecurityContextHolder.getContext().getAuthentication().getAuthorities().toString()}"></c:out>
		<h6 style="color:white;" align="right">
			Welcome : ${pageContext.request.userPrincipal.name} 
			 <a href="<c:url value="/logout" />">Logout</a>
			
		</h6>
		</c:if>
                
          
        </div>

</nav>
  </body>
  </html>
  
