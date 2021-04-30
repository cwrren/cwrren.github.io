<%-- 
    Document   : admin
    Created on : May 24, 2020, 1:47:33 PM
    Author     : Wei Ren
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <link rel="apple-touch-icon" sizes="76x76" href="assets/img/apple-icon.png">
  <link rel="icon" type="image/png" href="assets/img/favicon.png">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <title>
    Veterinary Clinic Management System
  </title>
  <meta content='width=device-width, initial-scale=1.0, shrink-to-fit=no' name='viewport' />
  <!--     Fonts and icons     -->
  <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
  <!-- CSS Files -->
  <link href="assets/css/material-dashboard.css?v=1.0.1" rel="stylesheet" />
  <link href="assets/demo/demo.css" rel="stylesheet" />
</head>

<body class="dark-edition off-canvas-sidebar">
  <!-- Navbar -->
  <nav class="navbar navbar-expand-lg navbar-transparent navbar-absolute fixed-top text-white">
    <div class="container">
      <div class="navbar-wrapper">
        <a class="navbar-brand" href="javascript:;">Login Page</a>
      </div>
      <button class="navbar-toggler" type="button" data-toggle="collapse" aria-controls="navigation-index" aria-expanded="false" aria-label="Toggle navigation">
        <span class="sr-only">Toggle navigation</span>
        <span class="navbar-toggler-icon icon-bar"></span>
        <span class="navbar-toggler-icon icon-bar"></span>
        <span class="navbar-toggler-icon icon-bar"></span>
      </button>
      <div class="collapse navbar-collapse justify-content-end">
        <ul class="navbar-nav">
          <li class="nav-item">
            <a href="index.html" class="nav-link">
              <i class="material-icons">dashboard</i>
              Home
            </a>
          </li>
          <li class="nav-item ">
            <a href="customer-register.jsp" class="nav-link">
              <i class="material-icons">person_add</i>
              Register
            </a>
          </li>
          <li class="nav-item ">
            <a href="customer-login.jsp" class="nav-link">
              <i class="material-icons">fingerprint</i>
              Login
            </a>
          </li>
          <li class="nav-item active ">
            <a href="admin.jsp" class="nav-link">
              <i class="material-icons">lock_open</i>
              Admin
            </a>
          </li>
        </ul>
      </div>
    </div>
  </nav>
  <!-- End Navbar -->
  <div class="wrapper wrapper-full-page">
    <div class="page-header login-page header-filter" filter-color="black" style="background-image: url('assets/img/bg4.jpg'); background-size: cover; background-position: top center;">
      <div class="container">
        <div class="row">
          <div class="col-md-4 ml-auto mr-auto">
            <form id="LoginValidation" action="LoginServlet" method="post" autocomplete="off">
                <div class="card card-profile text-center card-hidden">
                  <div class="card-header ">
                    <div class="card-avatar">
                      <img class="img" src="assets/img/admin.jpg" name="pic" id="pic">
                    </div>
                  </div>
                  <div class="card-body ">
                      <h4 class="card-title">Login</h4>
                      <div class="form-group">
                        <label for="exampleName" class="label-floating">Username/email</label>
                        <input type="text" name="username" class="form-control" id="exampleEName" required="true">
                      </div>
                      <div class="form-group">
                        <label for="examplePassword" class="label-floating">Enter Password</label>
                        <input type="password" name="password" class="form-control" id="exampleInput1" required="true">
                      </div>
                      <div class="form-check">
                          <label class="form-check-label">
                            <input class="form-check-input" type="radio" name="role" value="admin" checked> Admin
                            <span class="circle">
                              <span class="check"></span>
                            </span>
                          </label>
                          <label class="form-check-label">
                            <input class="form-check-input" type="radio" name="role" value="veterinarian"> Veterinarian
                            <span class="circle">
                              <span class="check"></span>
                            </span>
                          </label>
                          <label class="form-check-label">
                            <input class="form-check-input" type="radio" name="role" value="staff"> Staff
                            <span class="circle">
                              <span class="check"></span>
                            </span>
                          </label>
                      </div>
                  </div>
                  <div class="card-footer justify-content-center">
                    <button type="submit" class="btn btn-primary">Unlock</button>
                  </div>
                </div>
            </form>
          </div>
        </div>
      </div>
      <footer class="footer">
        <div class="container">
          <div class="copyright float-right">
            &copy;
            <script>
              document.write(new Date().getFullYear())
            </script>, made with <i class="material-icons">favorite</i> by
            WeiRen for a better web.
          </div>
        </div>
      </footer>
    </div>
  </div>
<!--   Core JS Files   -->
  <script src="assets/js/core/jquery.min.js"></script>
  <script src="assets/js/core/popper.min.js"></script>
  <script src="assets/js/core/bootstrap-material-design.min.js"></script>
  <script src="assets/js/plugins/perfect-scrollbar.jquery.min.js"></script>
  <!-- Plugin for the momentJs  -->
  <script src="assets/js/plugins/moment.min.js"></script>
  <!--  Plugin for Sweet Alert -->
  <script src="assets/js/plugins/sweetalert2.js"></script>
  <!-- Forms Validations Plugin -->
  <script src="assets/js/plugins/jquery.validate.min.js"></script>
  <!--	Plugin for Select, full documentation here: http://silviomoreto.github.io/bootstrap-select -->
  <script src="assets/js/plugins/bootstrap-selectpicker.js"></script>
  <!--  Plugin for the DateTimePicker, full documentation here: https://eonasdan.github.io/bootstrap-datetimepicker/ -->
  <script src="assets/js/plugins/bootstrap-datetimepicker.min.js"></script>
  <!--  DataTables.net Plugin, full documentation here: https://datatables.net/  -->
  <script src="assets/js/plugins/jquery.dataTables.min.js"></script>
  <!--	Plugin for Tags, full documentation here: https://github.com/bootstrap-tagsinput/bootstrap-tagsinputs  -->
  <script src="assets/js/plugins/bootstrap-tagsinput.js"></script>
  <!-- Plugin for Fileupload, full documentation here: http://www.jasny.net/bootstrap/javascript/#fileinput -->
  <script src="assets/js/plugins/jasny-bootstrap.min.js"></script>
  <script>
    $(document).ready(function() {
      md.checkFullPageBackgroundImage();
      setTimeout(function() {
        // after 1000 ms we add the class animated to the login/register card
        $('.card').removeClass('card-hidden');
      }, 700);
    });
    
    
    $(document).ready(function(){
        $("input:radio[name=role]").click(function() {
            var value = $(this).val();
            var image_name;
            if(value == 'admin'){
                image_name = "assets/img/admin.jpg";
            }else{
                if(value == 'veterinarian'){
                    image_name = "assets/img/vet.jpg";
                }else{
                    image_name = "assets/img/staff.jpg";
                }
            }
             $('#pic').attr('src', image_name);
        });
    });
  </script>
</body>

</html>

