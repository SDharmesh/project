

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page errorPage="error_page.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <link href="css/mystyle.css" rel="stylesheet" type="text/css"/>
        <script src="https://kit.fontawesome.com/a076d05399.js"></script>

        <script src="https://kit.fontawesome.com/yourcode.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <style>

            body{
                background: rgb(2,0,36);
                background: linear-gradient(90deg, rgba(2,0,36,1) 0%, rgba(9,121,105,1) 35%, rgba(0,255,226,1) 100%);
                background-color: #e3f2fd;
            }
            


        </style>
    </head>
    <body>

        <%@include file="navbar.jsp" %>


        <!--login form here-->
        <main class="d-flex align-items-center primary-background banner-background"style="height:70vh;margin-top: 30px;">
            <div class="container">
                <div class="row">
                    <div class="col-md-4 offset-md-4 mb-2">
                        <div class="card" >
                            <div class="card-header text-center" style="">
                                <span class="fa fa-user-plus fa-3x"></span>
                                <p>Login here</p>
                            </div>




                            <div class="card-body">

                                <form action="LoginServlet" method="POST">
                                    <div class="form-group" >
                                        <label for="exampleInputEmail1"><span class="fas fa-user-shield"> User Email</span></label>
                                        <input name="email" required type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">

                                    </div>
                                    <div class="form-group">
                                        <label for="exampleInputPassword1"><span class="fas fa-user-lock"> Password</span></label>
                                        <input name="password" required type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
                                    </div>

                                    <div class="container text-center">

                                        <button type="submit" class="btn btn-primary"><span class="fa fa-share-square"> Submit</span></button>

                                    </div>
                                </form>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </main>




        <script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>

        <script src="js/myjs.js" type="text/javascript"></script>
    </body>
</html>
