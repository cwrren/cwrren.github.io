<%-- 
    Document   : make-appointment
    Created on : Apr 3, 2021, 12:44:41 AM
    Author     : cwrre
--%>

<%@page import="Customer.CustomerDAO"%>
<%@page import="vetclinic.Pet, vetclinic.Slot"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="database" class="vetclinic.DBConnection" scope="request"/>
<jsp:useBean id="petDao" class="vetclinic.PetDAO" scope="request"/>
<jsp:useBean id="slotDao" class="vetclinic.SlotDAO" scope="request"/>
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
  <link href="../assets/demo/demo.css" rel="stylesheet" />
</head>
<%
            if(session.getAttribute("custid") == null){
                out.println("<script type=\"text/javascript\">");
                out.println("alert(\"Your login session expired\")");
                out.println("window.location.replace(\"../customer-login.jsp\")");
                out.println("</script>");
            }
            
            int custid = Integer.parseInt(session.getAttribute("custid").toString());
            
            List<Pet> allPet = petDao.retrievePet(custid);
            List<Slot> allSlot = slotDao.retrieveAllSlot();
            List<Slot> slotByDate = slotDao.retrieveSlotByDate();
            List<Slot> slotByTime = slotDao.retrieveSlotByTime("");
%>
<body class="dark-edition ">
  <div class="wrapper ">
    <div class="sidebar" data-color="green" data-background-color="lighter">
      <div class="logo"><a href="#" class="simple-text logo-mini">
          VC
        </a>
        <a href="#" class="simple-text logo-normal">
          Veterinary Clinic
        </a>
      </div>
      <div class="sidebar-wrapper">
        <div class="user">
          <div class="photo">
            <img src="../assets/img/default-avatar.png" />
          </div>
          <div class="user-info">
            <a data-toggle="collapse" href="#collapseExample" class="username">
              <span>
                <%= session.getAttribute("custname") %> (Customer)
                <b class="caret"></b>
              </span>
            </a>
            <div class="collapse" id="collapseExample">
              <ul class="nav">
                <li class="nav-item">
                  <a class="nav-link" href="#">
                    <span class="sidebar-mini"> MP </span>
                    <span class="sidebar-normal"> My Profile </span>
                  </a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="#">
                    <span class="sidebar-mini"> EP </span>
                    <span class="sidebar-normal"> Edit Profile </span>
                  </a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="#">
                    <span class="sidebar-mini"> S </span>
                    <span class="sidebar-normal"> Settings </span>
                  </a>
                </li>
              </ul>
            </div>
          </div>
        </div>
        <ul class="nav">
          <li class="nav-item ">
            <a class="nav-link" href="customer-main.jsp">
              <i class="material-icons">dashboard</i>
              <p> Dashboard </p>
            </a>
          </li>
          <li class="nav-item ">
            <a class="nav-link" data-toggle="collapse" href="#pets">
              <i class="material-icons">pets</i>
              <p> Pets
                <b class="caret"></b>
              </p>
            </a>
            <div class="collapse" id="pets">
              <ul class="nav">
                <li class="nav-item ">
                  <a class="nav-link" href="cust-add-pet.jsp">
                    <span class="sidebar-mini"> A </span>
                    <span class="sidebar-normal"> Add Pets </span>
                  </a>
                </li>
                <li class="nav-item ">
                  <a class="nav-link" href="cust-pet-list.jsp">
                    <span class="sidebar-mini"> P </span>
                    <span class="sidebar-normal"> My Pets </span>
                  </a>
                </li>
              </ul>
            </div>
          </li>
          <li class="nav-item active ">
            <a class="nav-link" data-toggle="collapse" href="#apt">
              <i class="material-icons">book_online</i>
              <p> Appointment
                <b class="caret"></b>
              </p>
            </a>
            <div class="collapse" id="apt">
              <ul class="nav">
                <li class="nav-item active ">
                  <a class="nav-link" href="make-appointment.jsp">
                    <span class="sidebar-mini"> M </span>
                    <span class="sidebar-normal"> Make Appointment </span>
                  </a>
                </li>
                <li class="nav-item ">
                  <a class="nav-link" href="appointment-list.jsp">
                    <span class="sidebar-mini"> H </span>
                    <span class="sidebar-normal"> Appointment History </span>
                  </a>
                </li>
              </ul>
            </div>
          </li>
          <li class="nav-item ">
            <a class="nav-link" href="treatment-list.jsp">
              <i class="material-icons">coronavirus</i>
              <p> Treatment </p>
            </a>
          </li>
      </div>
    </div>
    <div class="main-panel">
      <!-- Navbar -->
      <nav class="navbar navbar-expand-lg navbar-transparent navbar-absolute fixed-top ">
        <div class="container-fluid">
          <div class="navbar-wrapper">
            <div class="navbar-minimize">
              <button id="minimizeSidebar" class="btn btn-just-icon btn-white btn-fab btn-round">
                <i class="material-icons text_align-center visible-on-sidebar-regular">more_vert</i>
                <i class="material-icons design_bullet-list-67 visible-on-sidebar-mini">view_list</i>
              </button>
            </div>
            <a class="navbar-brand" href="javascript:;">Customer Dashboard</a>
          </div>
          <button class="navbar-toggler" type="button" data-toggle="collapse" aria-controls="navigation-index" aria-expanded="false" aria-label="Toggle navigation">
            <span class="sr-only">Toggle navigation</span>
            <span class="navbar-toggler-icon icon-bar"></span>
            <span class="navbar-toggler-icon icon-bar"></span>
            <span class="navbar-toggler-icon icon-bar"></span>
          </button>
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
      <div class="content">
        <div class="content">
          <div class="container-fluid">
              <div class="row">
                  <div class="col-md-12">
                    <div class="card">
                      <div class="card-header card-header-primary card-header-icon">
                        <div class="card-icon">
                          <i class="material-icons">assignment</i>
                        </div>
                        <h4 class="card-title">Make Appointment</h4>
                      <div class="card-body ">
                          <form role="form" action="../CustomerMakeAppointmentServlet" method="post">
                            <div class="row">
                              <label class="col-sm-2 col-form-label">Company</label>
                                <div class="col-sm-10">
                                  <div class="form-group">
                                  <input type="text" class="form-control" disabled="" placeholder="Company" value="Veterinary Clinic">
                                </div>
                              </div>
                            </div>
                            <div class="row">
                              <label class="col-sm-2 col-form-label">Appointment ID</label>
                                <div class="col-sm-10">
                                  <div class="form-group">
                                  <input type="text" class="form-control" disabled="" placeholder="id" value="Auto Increment">
                                </div>
                              </div>
                            </div>
                            <div class="row">
                              <label class="col-sm-2 col-form-label">Customer ID</label>
                                <div class="col-sm-10">
                                  <div class="form-group">
                                      <input type="text" name="custid" class="form-control" id="custid" placeholder="id" value="<%=custid%>">
                                </div>
                              </div>
                            </div>
                            <div class="row">
                              <label class="col-sm-2 col-form-label">Appointment Date</label>
                                <div class="col-md-2">
                                  <div class="form-group">
                                    <select class="selectpicker" id="date" name="date" data-style="select-with-transition" title="Choose Date" data-size="6">
                                        <option disabled>Choose Date</option>
                                    </select>
                                  </div>
                              </div>
                            </div>
                            <div class="row">
                              <label class="col-sm-2 col-form-label">Appointment Time</label>
                                <div class="col-md-2">
                                  <div class="form-group">
                                    <select class="selectpicker" id="time" name="time" data-style="select-with-transition" title="Choose Time" data-size="<%allSlot.size();%>">
                                        <option disabled>Select Time</option>
                                    </select>
                              </div>
                            </div>
                            </div>
                            <div class="row">
                              <label class="col-sm-2 col-form-label">Pet</label>
                                <div class="col-sm-10">
                                  <div class="form-group">
                                  <select class="selectpicker" name="petid" data-style="select-with-transition" title="Choose Pet" data-size="<%allPet.size();%>">
                                  <%
                                      for (int i = 0; i<allPet.size(); i++){
                                          out.println("<option value='"+allPet.get(i).getPetID()+"' selected>"+allPet.get(i).getPetID()+" "+allPet.get(i).getPetName()+"</option>");
                                      }
                                  %>
                                  </select>
                                </div>
                              </div>
                            </div>
                                <div class="card-footer">
                                  <button type="submit" class="btn btn-fill btn-primary">Submit</button>
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
        <div class="container-fluid">
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
  <script src="../assets/js/core/jquery.min.js"></script>
  <script src="../assets/js/core/popper.min.js"></script>
  <script src="../assets/js/core/bootstrap-material-design.min.js"></script>
  <script src="../assets/js/plugins/perfect-scrollbar.jquery.min.js"></script>
  <!-- Plugin for the momentJs  -->
  <script src="../assets/js/plugins/moment.min.js"></script>
  <!--  Plugin for Sweet Alert -->
  <script src="../assets/js/plugins/sweetalert2.js"></script>
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
  <!-- Vector Map plugin, full documentation here: http://jvectormap.com/documentation/ -->
  <script src="../assets/js/plugins/jquery-jvectormap.js"></script>
  <!--  Plugin for the Sliders, full documentation here: http://refreshless.com/nouislider/ -->
  <script src="../assets/js/plugins/nouislider.min.js"></script>
  <!-- Include a polyfill for ES6 Promises (optional) for IE11, UC Browser and Android browser support SweetAlert -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/core-js/2.4.1/core.js"></script>
  <!-- Library for adding dinamically elements -->
  <script src="../assets/js/plugins/arrive.min.js"></script>
  <!-- Chartist JS -->
  <script src="../assets/js/plugins/chartist.min.js"></script>
  <!--  Notifications Plugin    -->
  <script src="../assets/js/plugins/bootstrap-notify.js"></script>
  <!-- Control Center for Material Dashboard: parallax effects, scripts for the example pages etc -->
  <script src="../assets/js/material-dashboard.js?v=1.0.1" type="text/javascript"></script>
  <script>
    $(document).ready(function() {
      md.initDashboardPageCharts();

      md.initVectorMap();

    });
    
    $(document).ready(function() {
      // initialise Datetimepicker and Sliders
      md.initFormExtendedDatetimepickers();
      if ($('.slider').length != 0) {
        md.initSliders();
      }
    });
  </script>
  <script>
    $(document).ready(function () {
                $.ajax({
                    url: "../GetSlotServlet",
                    method: "GET",
                    data: {operation: 'date'},
                    success: function (data, textStatus, jqXHR) {
                        console.log(data);
                        let obj = $.parseJSON(data);
                        $.each(obj, function (key, value) {
                            $('#date').append("<option value='" + value.slotDate + "'>" + value.slotDate + "</option>");
                        });
                        $('#date').selectpicker('refresh');
                    },
                    error: function (jqXHR, textStatus, errorThrown) {
                        $('#date').append('<option>Date Unavailable</option>');
                    },
                    cache: false
                });


                $('#date').change(function () {
                    $('#time').find('option').remove();
                    $('#time').append('<option disabled>Select Time</option>'); 

                    let data = {
                        operation: "time",
                        id: $('#date').val()
                    };

                    $.ajax({
                        url: "../GetSlotServlet",
                        method: "GET",
                        data: data,
                        success: function (data, textStatus, jqXHR) {
                            console.log(data);
                            let obj = $.parseJSON(data);
                            $.each(obj, function (key, value) {
                                if (value.status == 'Available') 
                                    $('#time').append('<option value="' + value.slotID + '">' + value.slotTime + '  ' + value.status + '</option>');
                                else
                                    $('#time').append('<option disabled>' + value.slotTime + '  ' + value.status + '</option>');
                            });
                            $('#time').selectpicker('refresh');
                        },
                        error: function (jqXHR, textStatus, errorThrown) {
                            $('#time').append('<option>Date Unavailable</option>');
                        },
                        cache: false
                    });
                });
            });
  </script>
</body>
</html>
