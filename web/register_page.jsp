

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register Page</title>
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



        <!-- register form using card -->





        <main  style="padding-bottom: 30px">
            <div class="container primary-background">


                <div class="col-md-6 offset-md-3">
                    <div class="card mb-2 mt-2">
                        <div class="card-header text-center">
                            <span class="fa fa-user-plus fa-3x"></span>
                            <h3>Register here</h3>
                        </div>
                        <div class="card-body">
                            <!--Form here-->

                            <form id="reg-form" action="RegisterServlet" method="POST">
                                <div class="form-group">
                                    <label for="user_name"><span class="fas fa-user"> Enter Name</span></label>
                                    <input name="user_name" type="text" class="form-control" id="user_name" aria-describedby="emailHelp" placeholder="Enter name">

                                </div>

                                <div class="form-group">
                                    <label for="exampleInputEmail1"><span class="fas fa-user-shield"> Email address</span></label>
                                    <input type="email" name="user_email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">

                                </div>

                                <div class="form-group">
                                    <label for="exampleInputPassword1"><span class="fas fa-user-lock"> Password</span></label>
                                    <input name="user_password" type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
                                </div>

                                <div class="form-group">
                                    <label for="gender">Select gender <span class="fas fa-restroom"></span> </label>
                                    <br/>
                                    <input type="radio"  id="gender"value="male"name="gender"><span class="fas fa-male"> Male</span>
                                    <input type="radio"  id="gender"value="female"name="gender"><span class="fas fa-female"> Female</span>
                                </div>



                                <div class="form-check">
                                    <input name="check" type="checkbox" class="form-check-input" id="exampleCheck1">
                                    <label class="form-check-label" for="exampleCheck1"><span class="fas fa-user-check"> Agree terms and conditions</span></label>
                                </div>

                                <div id="loader"class="container text-center " style="display: none">

                                    <i class="fa fa-spinner fa-4x fa-spin"></i>
                                    <h3>Please Wait...</h3>
                                </div>

                                <div class="container text-center">


                                    <button id="submit-btn" type="submit" class="btn btn-primary"><span class="fa fa-share-square"> Submit</span></button>

                                </div>

                            </form> 
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

        <script>

            /*
             jquery for ajax is written here
             */

//using ajax here to prevent data/info from going to another page


//sweet alert part is pend


            $(document).ready(function () {
                console.log("page loaded");




                $("#reg-form").on('submit', function (event) {
                    event.preventDefault();

                    $("#submit-btn").hide();
                    $("#loader").show();


                    let form = new FormData(this);

                    //preventing data and giving information
                    $.ajax({

                        url: "RegisterServlet",
                        type: 'POST',
                        data: form,
                        success: function (data, textStatus, jqXHR) {

                            console.log(data);

                            $("#submit-btn").show();
                            $("#loader").hide();

                            if (data.trim() === 'done')
                            {

                                swal("Registered Successfully..Redirecting you to Login page !!")
                                        .then((value) => {
                                            window.location = ("login_page.jsp");
                                        });
                            } else
                            {
                                swal(data);
                            }


                        },
                        error: function (jqXHR, textStatus, errorThrown) {
                            console.log(jqXHR);

                            $("#submit-btn").show();
                            $("#loader").hide();

                            swal("Something went wrong please check!!");




                        },
                        processData: false,
                        contentType: false


                    });



                });


            });



        </script>





    </body>
</html>
