<%-- 
    Document   : register
    Created on : Mar 27, 2021, 4:36:04 PM
    Author     : cwrre
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
        <a class="navbar-brand" href="index.html">Register Page</a>
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
          <li class="nav-item  active ">
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
          <li class="nav-item ">
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
    <div class="page-header register-page header-filter" filter-color="black" style="background-image: url('assets/img/register.jpg')">
      <div class="container">
        <div class="row">
          <div class="col-md-10 ml-auto mr-auto">
            <div class="card card-signup">
              <h2 class="card-title text-center">Register</h2>
              <div class="card-body">
                <div class="row">
                  <div class="col-md-5 ml-auto">
                    <div class="info info-horizontal">
                      <div class="icon icon-rose">
                        <i class="material-icons">timeline</i>
                      </div>
                      <div class="description">
                        <h4 class="info-title">Marketing</h4>
                        <p class="description">
                          We've created the marketing campaign of the website. It was a very interesting collaboration.
                        </p>
                      </div>
                    </div>
                    <div class="info info-horizontal">
                      <div class="icon icon-primary">
                        <i class="material-icons">code</i>
                      </div>
                      <div class="description">
                        <h4 class="info-title">Responsive Webpage</h4>
                        <p class="description">
                          You can access to our website in anywhere with any devices you have.
                        </p>
                      </div>
                    </div>
                    <div class="info info-horizontal">
                      <div class="icon icon-info">
                        <i class="material-icons">group</i>
                      </div>
                      <div class="description">
                        <h4 class="info-title">Built Interaction</h4>
                        <p class="description">
                          You will be allowed to contact our team on anytime
                        </p>
                      </div>
                    </div>
                  </div>
                  <div class="col-md-5 mr-auto">
                    <form id="RegisterValidation" action="CustomerRegisterServlet" method="post" autocomplete="off">
                        <div class="card ">
                          <div class="card-header card-header-primary text-center">
                            <h4 class="card-title">Registration Form</h4>
                          </div>
                          <div class="card-body ">
                            <div class="form-group">
                              <label for="exampleEmail" class="md-label-floating"> Email Address *</label>
                              <input type="email" name="email" class="form-control" id="exampleEmail" required="true">
                            </div>
                            <div class="form-group">
                              <label for="examplePassword" class="md-label-floating"> Password *</label>
                              <input type="password" name="password" class="form-control" id="examplePassword" required="true" name="password">
                            </div>
                            <div class="form-group">
                              <label for="examplePassword1" class="md-label-floating"> Confirm Password *</label>
                              <input type="password" name="password2" class="form-control" id="examplePassword1" required="true" equalTo="#examplePassword" name="password_confirmation">
                            </div>
                            <div class="category form-category">* Required fields</div>
                          </div>
                          <div class="card-footer text-right">
                            <button type="submit" class="btn btn-primary">Register</button>
                          </div>
                        </div>
                      </form>
                  </div>
                </div>
              </div>
            </div>
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
  <script src="assets/js/plugins/moment.min.js"></script>
  <script src="assets/js/plugins/sweetalert2.js"></script>
  <!-- Forms Validations Plugin -->
  <script src="assets/js/plugins/jquery.validate.min.js"></script>
  <!--  Google Maps Plugin    -->
  <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
  <!-- Chartist JS -->
  <script src="assets/js/plugins/chartist.min.js"></script>
  <!--  Notifications Plugin    -->
  <script src="assets/js/plugins/bootstrap-notify.js"></script>
  <!-- Control Center for Material Dashboard: parallax effects, scripts for the example pages etc -->
  <script src="assets/js/material-dashboard.js?v=1.0.1" type="text/javascript"></script>
  <script>
    $(document).ready(function() {
      md.checkFullPageBackgroundImage();
    });
  </script>
  <script>
    function setFormValidation(id) {
      $(id).validate({
        highlight: function(element) {
          $(element).closest('.form-group').removeClass('has-success').addClass('has-danger');
          $(element).closest('.form-check').removeClass('has-success').addClass('has-danger');
        },
        success: function(element) {
          $(element).closest('.form-group').removeClass('has-danger').addClass('has-success');
          $(element).closest('.form-check').removeClass('has-danger').addClass('has-success');
        },
        errorPlacement: function(error, element) {
          $(element).closest('.form-group').append(error);
        },
      });
    }

    $(document).ready(function() {
      setFormValidation('#RegisterValidation');
      setFormValidation('#TypeValidation');
      setFormValidation('#LoginValidation');
      setFormValidation('#RangeValidation');
    });
  </script>
</body>

</html>
