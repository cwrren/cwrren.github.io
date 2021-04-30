<%-- 
    Document   : fill-info
    Created on : Apr 16, 2021, 1:34:49 PM
    Author     : cwrre
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8" />
  <link rel="apple-touch-icon" sizes="76x76" href="../assets/img/apple-icon.png">
  <link rel="icon" type="image/png" href="../assets/img/favicon.png">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <title>
    Customer Dashboard - Veterinary Clinic
  </title>
  <meta content='width=device-width, initial-scale=1.0, shrink-to-fit=no' name='viewport' />
  <!--     Fonts and icons     -->
  <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
  <!-- CSS Files -->
  <link href="../assets/css/material-dashboard.css?v=1.0.1" rel="stylesheet" />
  <!-- CSS Just for demo purpose, don't include it in your project -->
  <link href="../assets/demo/demo.css" rel="stylesheet" />
</head>
<%
            if(session.getAttribute("custid") == null){
                out.println("<script type=\"text/javascript\">");
                out.println("alert(\"Your login session expired\")");
                out.println("window.location.replace(\"../customer-login.jsp\")");
                out.println("</script>");
            }
            int custID = Integer.parseInt(request.getParameter("custID"));
%>

<body class="dark-edition off-canvas-sidebar">

      <!-- Navbar -->
      <nav class="navbar navbar-expand-lg navbar-transparent navbar-absolute fixed-top ">
        <div class="container-fluid">
          <div class="collapse navbar-collapse justify-content-end">
            <form class="navbar-form">
              <div class="input-group no-border">
                <input type="text" value="" class="form-control" placeholder="Search...">
                <button type="submit" class="btn btn-white btn-round btn-just-icon">
                  <i class="material-icons">search</i>
                  <div class="ripple-container"></div>
                </button>
              </div>
            </form>
            <ul class="navbar-nav">
              <li class="nav-item dropdown">
                <a class="nav-link" href="javascript:;" id="navbarDropdownProfile" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                  <i class="material-icons">person</i>
                  <p class="d-lg-none d-md-block">
                    Account
                  </p>
                </a>
                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownProfile">
                  <a class="dropdown-item" href="#">Profile</a>
                  <a class="dropdown-item" href="#">Settings</a>
                  <div class="dropdown-divider"></div>
                  <a class="dropdown-item" href="../CustomerLogoutServlet">Log out</a>
                </div>
              </li>
            </ul>
          </div>
        </div>
      </nav>
      <!-- End Navbar -->
  <div class="wrapper wrapper-full-page">
    <div class="page-header login-page header-filter" filter-color="grey" style="background-image: url('../assets/img/fill.jpg'); background-size: cover; background-position: top center;">
      
      <div class="container">
        <div class="row">
          <div class="col-md-12 col-12 mr-auto ml-auto">
            <!--      Wizard container        -->
            <div class="wizard-container">
              <div class="card card-wizard" data-color="purple" id="wizardProfile">
                <form action="../FillInfoServlet" method="post" autocomplete="off" enctype="multipart/form-data">
                  <!--        You can switch " data-color="primary" "  with one of the next bright colors: "green", "orange", "red", "blue"       -->
                  <input type="hidden" name="hidid" value="<%=custID%>"/>
                  <div class="card-header text-center">
                    <h3 class="card-title">
                      Build Your Profile
                    </h3>
                    <h5 class="card-description">This information will let us know more about you.</h5>
                  </div>
                  <div class="wizard-navigation">
                    <ul class="nav nav-pills">
                      <li class="nav-item">
                        <a class="nav-link active" href="#about" data-toggle="tab" role="tab">
                          About
                        </a>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link" href="#address" data-toggle="tab" role="tab">
                          Address
                        </a>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link" href="#pet" data-toggle="tab" role="tab">
                          Pet
                        </a>
                      </li>
                    </ul>
                  </div>
                  <div class="card-body">
                    <div class="tab-content">
                      <div class="tab-pane active" id="about">
                        <h5 class="info-text"> Let's start with the basic information</h5>
                        <div class="row justify-content-center">
                          <div class="col-lg-10 mt-3">
                            <div class="input-group form-control-lg">
                              <div class="input-group-prepend">
                                <span class="input-group-text">
                                  <i class="material-icons">face</i>
                                </span>
                              </div>
                              <div class="form-group">
                                <label for="name" class="md-label-floating">Name (required)</label>
                                <input type="text" class="form-control" id="name" name="name" required>
                              </div>
                            </div>
                          </div>
                          <div class="col-lg-10 mt-3">
                            <div class="input-group form-control-lg">
                              <div class="input-group-prepend">
                                <span class="input-group-text">
                                  <i class="material-icons">record_voice_over</i>
                                </span>
                              </div>
                              <div class="form-group">
                                <label for="age" class="md-label-floating">Age (required)</label>
                                <input type="text" class="form-control" id="age" name="age" maxlength="2" number="true" required>
                              </div>
                            </div>
                          </div>
                          <div class="col-lg-10 mt-3">
                            <div class="input-group form-control-lg">
                              <div class="input-group-prepend">
                                <span class="input-group-text">
                                  <i class="material-icons">transgender</i>
                                </span>
                              </div>
                              <div class="form-group">
                                <label for="name" class="md-label-floating">Gender (required)</label>
                                <input type="text" class="form-control" id="gender" name="gender" required>
                              </div>
                            </div>
                          </div>
                          <div class="col-lg-10 mt-3">
                            <div class="input-group form-control-lg">
                              <div class="input-group-prepend">
                                <span class="input-group-text">
                                  <i class="material-icons">phone</i>
                                </span>
                              </div>
                              <div class="form-group">
                                <label for="phone" class="md-label-floating">Phone (required)</label>
                                <input type="text" class="form-control" id="phone" name="phone" minlength="10" number="true" required>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                      <div class="tab-pane" id="address">
                        <div class="row justify-content-center">
                          <div class="col-sm-12">
                            <h5 class="info-text"> Are you living in a nice area? </h5>
                          </div>
                          <div class="col-sm-2">
                            <div class="form-group">
                              <label>House No.</label>
                              <input type="text" class="form-control" id="no" name="no" required>
                            </div>
                          </div>
                          <div class="col-sm-8">
                            <div class="form-group">
                              <label>Street Name</label>
                              <input type="text" class="form-control" id="street" name="street" required>
                            </div>
                          </div>
                          <div class="col-sm-4">
                            <div class="form-group">
                              <label>City</label>
                              <input type="text" class="form-control" id="city" name="city" required>
                            </div>
                          </div>
                          <div class="col-sm-3">
                            <div class="form-group">
                              <label>Postcode</label>
                              <input type="text" class="form-control" id="postcode" name="postcode" required>
                            </div>
                          </div>
                          <div class="col-sm-3">
                            <div class="form-group select-wizard">
                              <label>State</label>
                              <select class="selectpicker" id="state" name="state" data-size="7" data-style="select-with-transition" title="Single Select" required>
                                <option value="Johor"> Johor </option>
                                <option value="Kedah"> Kedah </option>
                                <option value="Kelantan"> Kelantan </option>
                                <option value="Kuala Lumpur"> Kuala Lumpur </option>
                                <option value="Labuan"> Labuan </option>
                                <option value="Malacca"> Malacca </option>
                                <option value="Negeri Sembilan"> Negeri Sembilan </option>
                                <option value="Pahang"> Pahang </option>
                                <option value="Penang"> Penang </option>
                                <option value="Perak"> Perak </option>
                                <option value="Perlis"> Perlis </option>
                                <option value="Putrajaya"> Putrajaya </option>
                                <option value="Sabah"> Sabah </option>
                                <option value="Sarawak"> Sarawak </option>
                                <option value="Selangor"> Selangor </option>
                                <option value="Terengganu"> Terengganu </option>
                              </select>
                            </div>
                          </div>
                        </div>
                      </div>
                      <div class="tab-pane" id="pet">
                        <h5 class="info-text"> Do you have a pet? </h5>
                        <div class="row justify-content-center">
                          <div class="col-sm-4">
                            <div class="picture-container">
                              <div class="picture">
                                <img src="../assets/img/pet-avatar.jpg" class="picture-src" id="wizardPicturePreview" title="" />
                                <input type="file" name="pic" id="wizard-picture">
                              </div>
                              <h6 class="description">Choose Picture</h6>
                            </div>
                          </div>
                          <div class="col-sm-6">
                            <div class="input-group form-control-lg mb-4">
                              <div class="input-group-prepend">
                                <span class="input-group-text">
                                  <i class="material-icons">face</i>
                                </span>
                              </div>
                              <div class="form-group">
                                <label for="petname" class="md-label-floating">Pets Name (required)</label>
                                <input type="text" class="form-control" id="petname" name="petname" required>
                              </div>
                            </div>
                            <div class="input-group form-control-lg mb-4">
                              <div class="input-group-prepend">
                                <span class="input-group-text">
                                  <i class="material-icons">record_voice_over</i>
                                </span>
                              </div>
                              <div class="form-group">
                                <label for="petage" class="md-label-floating">Pet Age (required)</label>
                                <input type="text" class="form-control" id="petage" name="petage" required>
                              </div>
                            </div>
                            <div class="input-group form-control-lg mb-4">
                              <div class="input-group-prepend">
                                <span class="input-group-text">
                                  <i class="material-icons">email</i>
                                </span>
                              </div>
                              <div class="form-group">
                                <label for="species" class="md-label-floating">Pet Species (required)</label>
                                <input type="text" class="form-control" id="species" name="species" required>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="card-footer">
                    <div class="mr-auto">
                      <input type="button" class="btn btn-previous btn-fill btn-secondary btn-wd disabled" name="previous" value="Previous">
                    </div>
                    <div class="ml-auto">
                      <input type="button" class="btn btn-next btn-fill btn-primary btn-wd" name="next" value="Next">
                      <button type="submit" class="btn btn-finish btn-fill btn-rose btn-wd">Submit</button>
                    </div>
                    <div class="clearfix"></div>
                  </div>
                </form>
              </div>
            </div>
            <!-- wizard container -->
          </div>
        </div>
      </div>
      <footer class="footer">
        <div class="container">
          <div class="copyright float-right">
            &copy;
            <script>
              document.write(new Date().getFullYear()
            </script>, made with <i class="material-icons">favorite</i> by
            WeiRen for a better web.
          </div>
        </div>
      </footer>
    </div>
  </div>
  <!--   Core JS Files   -->
  <script src="../assets/js/core/jquery.min.js"></script>
  <script src="../assets/js/core/popper.min.js"></script>
  <script src="../assets/js/core/bootstrap-material-design.min.js"></script>
  <script src="../assets/js/plugins/perfect-scrollbar.jquery.min.js"></script>
  <!-- Plugin for the momentJs  -->
  <script src="../assets/js/plugins/moment.min.js"></script>
  <!--  Plugin for Sweet Alert -->
  <script src="../assets/js/plugins/sweetalert2.js"></script>
  <!-- Plugin for the Wizard, full documentation here: https://github.com/VinceG/twitter-bootstrap-wizard -->
  <script src="../../assets/js/plugins/jquery.bootstrap-wizard.js"></script>
  <!-- Forms Validations Plugin -->
  <script src="../assets/js/plugins/jquery.validate.min.js"></script>
  <!-- Plugin for the Wizard, full documentation here: https://github.com/VinceG/twitter-bootstrap-wizard -->
  <script src="../assets/js/plugins/jquery.bootstrap-wizard.js"></script>
  <!--	Plugin for Select, full documentation here: http://silviomoreto.github.io/bootstrap-select -->
  <script src="../assets/js/plugins/bootstrap-selectpicker.js"></script>
  <!--  Plugin for the DateTimePicker, full documentation here: https://eonasdan.github.io/bootstrap-datetimepicker/ -->
  <script src="../assets/js/plugins/bootstrap-datetimepicker.min.js"></script>
  <!--  DataTables.net Plugin, full documentation here: https://datatables.net/  -->
  <script src="../assets/js/plugins/jquery.dataTables.min.js"></script>
  <!--	Plugin for Tags, full documentation here: https://github.com/bootstrap-tagsinput/bootstrap-tagsinputs  -->
  <script src="../assets/js/plugins/bootstrap-tagsinput.js"></script>
  <!-- Plugin for Fileupload, full documentation here: http://www.jasny.net/bootstrap/javascript/#fileinput -->
  <script src="../assets/js/plugins/jasny-bootstrap.min.js"></script>
  <!--  Full Calendar Plugin, full documentation here: https://github.com/fullcalendar/fullcalendar    -->
  <script src="../assets/js/plugins/fullcalendar/fullcalendar.min.js"></script>
  <script src="../assets/js/plugins/fullcalendar/daygrid.min.js"></script>
  <script src="../assets/js/plugins/fullcalendar/timegrid.min.js"></script>
  <script src="../assets/js/plugins/fullcalendar/list.min.js"></script>
  <script src="../assets/js/plugins/fullcalendar/interaction.min.js"></script>
  <!-- Vector Map plugin, full documentation here: http://jvectormap.com/documentation/ -->
  <script src="../assets/js/plugins/jquery-jvectormap.js"></script>
  <!--  Plugin for the Sliders, full documentation here: http://refreshless.com/nouislider/ -->
  <script src="../assets/js/plugins/nouislider.min.js"></script>
  <!-- Include a polyfill for ES6 Promises (optional) for IE11, UC Browser and Android browser support SweetAlert -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/core-js/2.4.1/core.js"></script>
  <!-- Library for adding dinamically elements -->
  <script src="../assets/js/plugins/arrive.min.js"></script>
  <!--  Google Maps Plugin    -->
  <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
  <!-- Chartist JS -->
  <script src="../assets/js/plugins/chartist.min.js"></script>
  <!--  Notifications Plugin    -->
  <script src="../assets/js/plugins/bootstrap-notify.js"></script>
  <!-- Control Center for Material Dashboard: parallax effects, scripts for the example pages etc -->
  <script src="../assets/js/material-dashboard.js?v=1.0.1" type="text/javascript"></script>
  <!-- Material Dashboard DEMO methods, don't include it in your project! -->
  <script src="../assets/demo/demo.js"></script>
  <script>
    $(document).ready(function() {
      // Javascript method's body can be found in assets/js/demos.js
      md.initDashboardPageCharts();

      md.initVectorMap();

    });
    
    $(document).ready(function() {
      // Initialise the wizard
      demo.initMaterialWizard();
      setTimeout(function() {
        $('.card.card-wizard').addClass('active');
      }, 600);
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
