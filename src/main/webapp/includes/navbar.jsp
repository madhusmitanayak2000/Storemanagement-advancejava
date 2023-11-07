<head>
    <link rel="stylesheet" href=
"https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <script src=
"https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js">
    </script>
    <script src=
"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js">
    </script>
    <script src=
"https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js">
    </script>
    <style>
        .navbar-nav {
            margin-left: auto;
        }
       
    </style>
</head>
<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
   <a class="navbar-brand" href="index.jsp">Shopping Cart </a>
  
        <ul class="navbar-nav">
         <li class="nav-item">
                <a class="nav-link" href="index.jsp">
                  Home
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="cart.jsp">
                  Cart
                </a>
            </li>
            <% 
            if(auth!= null){%>
            	<li class="nav-item">
                <a class="nav-link" href="orders.jsp">
                  Orders
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="Log-out">
                  Logout
                </a>
            </li>
            
            
          <% }else{%>
            	  <li class="nav-item">
                  <a class="nav-link" href="login.jsp">
                    Login
                  </a>
              </li>
            
            <% }
            %>
           
          
        </ul>
    </nav>