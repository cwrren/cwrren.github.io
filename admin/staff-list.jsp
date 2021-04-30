<%-- 
    Document   : staff-list1
    Created on : Mar 30, 2021, 10:15:02 PM
    Author     : cwrre
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.*, vetclinic.Staff"%>
<jsp:useBean id="database" class="vetclinic.DBConnection" scope="request"/>
<jsp:useBean id="staffDao" class="vetclinic.StaffDAO" scope="request"/>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8" />
  <link rel="apple-touch-icon" sizes="76x76" href="../assets/img/apple-icon.png">
  <link rel="icon" type="image/png" href="../assets/img/favicon.png">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <title>
    Admin Dashboard - Veterinary Clinic
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
            if(session.getAttribute("id") == null){
                out.println("<script type=\"text/javascript\">");
                out.println("alert(\"Your login session expired\")");
                out.println("window.location.replace(\"../admin.jsp\")");
                out.println("</script>");
            }

            List<Staff> allStaff = staffDao.retrieveAllStaff();
%>
<body class="dark-edition ">
  <div class="wrapper ">
    <div class="sidebar" data-color="purple" data-background-color="default">
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
                <%= session.getAttribute("name") %>
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
            <a class="nav-link" href="admin-main.jsp">
              <i class="material-icons">dashboard</i>
              <p> Dashboard </p>
            </a>
          </li>
          <li class="nav-item active ">
            <a class="nav-link" data-toggle="collapse" href="#users">
              <i class="material-icons">people</i>
              <p> Users
                <b class="caret"></b>
              </p>
            </a>
            <div class="collapse" id="users">
              <ul class="nav">
                <li class="nav-item ">
                  <a class="nav-link" href="customer-list.jsp">
                    <span class="sidebar-mini"> C </span>
                    <span class="sidebar-normal"> Customer </span>
                  </a>
                </li>
                <li class="nav-item active ">
                  <a class="nav-link" href="staff-list.jsp">
                    <span class="sidebar-mini"> S </span>
                    <span class="sidebar-normal"> Staff </span>
                  </a>
                </li>
                <li class="nav-item ">
                  <a class="nav-link" href="vet-list.jsp">
                    <span class="sidebar-mini"> V </span>
                    <span class="sidebar-normal"> Veterinarian </span>
                  </a>
                </li>
              </ul>
            </div>
          </li>
          <li class="nav-item ">
            <a class="nav-link" href="pet-list.jsp">
              <i class="material-icons">pets</i>
              <p> Pets </p>
            </a>
          </li>
          <li class="nav-item ">
            <a class="nav-link" data-toggle="collapse" href="#inventory">
              <i class="material-icons">handyman</i>
              <p> Inventory
                <b class="caret"></b>
              </p>
            </a>
            <div class="collapse" id="inventory">
              <ul class="nav">
                <li class="nav-item ">
                  <a class="nav-link" href="medicine-list.jsp">
                    <span class="sidebar-mini"> M </span>
                    <span class="sidebar-normal"> Medicine </span>
                  </a>
                </li>
                <li class="nav-item ">
                  <a class="nav-link" href="equipment-list.jsp">
                    <span class="sidebar-mini"> E </span>
                    <span class="sidebar-normal"> Equipment </span>
                  </a>
                </li>
              </ul>
            </div>
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
            <a class="navbar-brand" href="javascript:;">Staff</a>
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
                  <a class="dropdown-item" href="../AdminLogoutServlet">Log out</a>
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
                        <h4 class="card-title">Staff Table</h4>
                      </div>
                      <div class="card-body">
                        <div class="table-responsive">
                          <table class="table"  style="table-layout: fixed; width: 100%">
                                <thead>
                                  <tr>
                                    <th class="text-center">
                                      Staff ID
                                    </th>
                                    <th>
                                      Staff Name
                                    </th>
                                    <th>
                                      Staff Phone No
                                    </th>
                                    <th>
                                      Staff Email
                                    </th>
                                    <th>
                                      Staff Password
                                    </th>
                                    <th>
                                      Staff Address
                                    </th>
                                    <th>
                                      Responsibility
                                    </th>
                                    <th>
                                      Action
                                    </th>
                                  </tr>
                                </thead>
                                <tbody>
                                  <%
                                    for (int i = 0; i<allStaff.size(); i++){
                
                                        out.println("<tr>");
                                        out.println("<td>"+allStaff.get(i).getStaffID() + "</td>");
                                        out.println("<td>"+allStaff.get(i).getStaffName()+"</td>");
                                        out.println("<td> +60 "+allStaff.get(i).getStaffPhoneNo()+"</td>");
                                        out.println("<td>"+allStaff.get(i).getStaffEmail()+"</td>");
                                        out.println("<td>"+allStaff.get(i).getStaffPassword()+"</td>");
                                        out.println("<td>"+allStaff.get(i).getStaffAddress()+"</td>");
                                        out.println("<td>"+allStaff.get(i).getResponsibility()+"</td>");
                                        out.println("<td><a href=process-update-staff.jsp?staffID="
                                                + allStaff.get(i).getStaffID() + ">Update</a>"
                                                + "i" + "<a href=../DeleteStaffServlet?staffID="
                                                + allStaff.get(i).getStaffID() + " onclick=\"return confirm"
                                                + "('Are you sure you want to delete?')\">Delete</a>"
                                                + "</td>");
                                        out.println("</tr>");
                                    }
                                  %>
                                  <tr>
                                    <td colspan="2" class="text-left">
                                        <a href="add-staff.jsp"><button type="button" class="btn btn-info btn-round">Add Staff <i class="material-icons">keyboard_arrow_right</i></button></a>
                                    </td>
                                  </tr>
                                </tbody>
                          </table>
                        </div>
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
  </script>
</body>

</html>

