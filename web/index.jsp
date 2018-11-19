<%-- 
    Document   : index
    Created on : Aug 17, 2018, 3:17:19 PM
    Author     : 
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<!--<html  manifest="new.appcache">-->
<html>
	<head>
		<meta http-equiv="content-type" content="text/html; charset=UTF-8">
		<meta charset="utf-8">
		<title>Daily Evaluation and Retention Form</title>
		<meta name="generator" content="Bootply" />
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
                  <link href="css/dataTables.bootstrap.min.css" rel="stylesheet">
                  <link href="css/jquery.dataTables.min.css" rel="stylesheet">
		<link href="css/bootstrap.css" rel="stylesheet">
                <link href="css/bootstrap-datepicker.min.css" rel="stylesheet">
                    <link rel="stylesheet" href="css/select2.min.css">
                    <link rel="shortcut icon" href="logo.png">
		<link href="css/styles.css" rel="stylesheet">
                <link href='https://fonts.googleapis.com/css?family=Aclonica' rel='stylesheet'>
            <style>
            .navbar-brand {
                font-family: 'Aclonica';font-size: 35px;
            }

            @-webkit-keyframes spaceboots {
                    0% { -webkit-transform: translate(2px, 1px) rotate(0deg); }
                    10% { -webkit-transform: translate(-1px, -2px) rotate(-1deg); }
                    20% { -webkit-transform: translate(-3px, 0px) rotate(1deg); }
                    30% { -webkit-transform: translate(0px, 2px) rotate(0deg); }
                    40% { -webkit-transform: translate(1px, -1px) rotate(1deg); }
                    50% { -webkit-transform: translate(-1px, 2px) rotate(-1deg); }
                    60% { -webkit-transform: translate(-3px, 1px) rotate(0deg); }
                    70% { -webkit-transform: translate(2px, 1px) rotate(-1deg); }
                    80% { -webkit-transform: translate(-1px, -1px) rotate(1deg); }
                    90% { -webkit-transform: translate(2px, 2px) rotate(0deg); }
                    100% { -webkit-transform: translate(1px, -2px) rotate(-1deg); }
            }
            .shake{
                -webkit-animation-name: spaceboots;
                    -webkit-animation-duration: 2.2s;
                    -webkit-transform-origin:50% 50%;
                    -webkit-animation-iteration-count: infinite;
                    -webkit-animation-timing-function: linear;
            }
            </style>
                <style>
                input:focus {
                    border-color: red;
                }
                .select2-container{ width: 100% !important; }
                </style>
 <style>
.dropbtn {
    /*background-color: #4CAF50;*/
    color: white;
    padding: 16px;
    font-size: 16px;
    border: none;
    cursor: pointer;
}

.dropdown {
    position: relative;
    display: inline-block;
}

.dropdown-content {
    text-align: left;
    padding-top: 10px;
    padding-bottom: 10px;
    padding-right: 10px;
    display: none;
    position: absolute;
    background-color: #f9f9f9;
    min-width: 200px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    z-index: 1;
}

.dropdown-content a {
    color: black;
    padding: 1px 10px 10px 6px;
    text-decoration: none;
    display: block;
}

.dropdown-content a:hover {background-color: #cbe5fe;}

.dropdown:hover .dropdown-content {
    display: block;
}

.dropdown:hover .dropbtn {
    background-color: #3e8e41;
}
</style>
	</head>
	<body>
<!-- header -->
<div id="top-nav" class="navbar navbar-inverse navbar-static-top">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            
        </div>
        <div class="navbar-collapse collapse">
             <ul class="nav navbar-nav navbar-right">
                <li class="dropdown">
              
                    <ul id="g-account-menu" class="dropdown-menu" role="menu">
                        <li><a href="#">My Profile</a></li>
                    </ul>
                </li>
                <li class="dropdown dropbtn"><i class="glyphicon glyphicon-download"></i> Reports
                    <ul class="dropdown-content">
                        
                <a title="Generate Raw Data" id="raw_data" data-toggle="modal" href="#raw_data_popup"><span id="usernamelabel" style="color: black;">Raw Data & Reporting Rates</span></a>
                <!--<a title="Generate Raw Data" id="raw_data" data-toggle="modal" href="#raw_data_popup"><span id="usernamelabel" style="color: black;">Reporting Rates</span></a>-->
                <!--<a title="Generate Raw Data" id="raw_data" data-toggle="modal" href="#raw_data_popup"><span id="usernamelabel" style="color: black;">Dashboards</span></a>-->
                 </ul>
                </li>
                <li>
                     <a title="Add Widget" id="manageuserbutton" data-toggle="modal" href="#allusersinfo">
                         <i class="glyphicon glyphicon-user glyphicon-remove"></i>
                         <span id="usernamelabel">Remove Users</span></a>
                 </li>
                 
                 <li><a title="Add Widget" id="adduserbutton" data-toggle="modal" href="#userdetails"><i class="glyphicon glyphicon-user"></i><span id="usernamelabel"> Add Username</span></a></li>
                 <li><a title="Add Widget" data-toggle="modal" style="display:none;" id="exportdataanchor2" href="#addWidgetModal"><i class="glyphicon glyphicon-cloud-upload"></i> Export Data</a></li>
                 <li>
                  <a  title="Help" data-toggle="modal" href="#help">
                            <i class="glyphicon glyphicon-question-sign"></i>
                            Help
                        </a></li>
                              <li><a href="#" style="display:none;" onclick="closeapp();"><i class="glyphicon glyphicon-lock"></i> Exit</a></li>
            </ul>
            <br>
        </div>
        
    </div>
    <!-- /container -->
    
</div>
<!-- Main -->
<div class="container-fluid">
    <div class="row">
        
        <!-- /col-3 -->
        <div class="col-sm-12">
            <h3 style="text-align: center;color:black; font-weight: 900;">Daily Evaluation of Retention Form <div style="font-size: 14px; color: green;">v 2.0.0.1 [2018-11-13]</div></h3>
            <input type="hidden" id="records" name="records" value="0">
            <div class="row">
                <!-- center left-->
                <div class="col-md-12">
                   
                    <div class="btn-group btn-group-justified">
                        <a href="#" id='refreshpage' class="btn btn-primary col-sm-3">
                            <i class="glyphicon glyphicon-refresh"></i>
                            <br> Refresh
                        </a>
                        
                        <a href="#" class="btn col-sm-3 shake btn-danger btn-lg" id="upload_data">
                            <i class="glyphicon glyphicon-upload"></i>
                            <div id="toupload" style="font-size: 18px; font-weight: 900;"></div>
                        </a>
                        
<!--                        <a href="#" id="download_data" class="btn btn-primary col-sm-1" style="background: green;font-size: 17px; font-weight: 400;" id="export">
                            <i class="glyphicon glyphicon-download-alt"></i>
                             Download Data as Excel
                        </a>-->
                       
                         </div>

                    <hr>
                    <!--tabs-->
                    <div class="panel">
                        <div class="tab-content">
                            <div class="tab-pane active well col-md-12" id="dataentry">
                                
                              <!--Data entry code-->
                    <div class="panel panel-default">
                       
                        <div class="panel-body" style="">
                            <div class="form form-vertical">
                                <table class='table table-striped table-bordered' >
                                    <tr><th style="text-align:center"><div><b><h4>Enter/Edit Daily Evaluation of Retention Data</h4></b></div><div style="float: right;text-align: right;"><a  data-toggle="modal" href="#delete_conf"><img src="images/delete.png" id="img_delete" style="width: 30%; height: 30%; "></a></div></th></tr>
                                    <tr><th style="text-align:center">
                                       <div class="progress">
                                           <div class="progress-bar" id="progess" role="progressbar" style="width: 0%;" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                                       </div>     
                                        </th></tr>
                                
                                    <tr>
                                 
                                <tr><td id="user_label" class="col-xs-10">
                                <div class="control-group">
                                    <label>Current User<font color="red"><b>*</b></font></label>
                                    <div class="controls">
                                        <!--<br>-->   
                                        <select name="user" id="user">
                                            <option value="">Select User</option>
                                        </select>
                                    </div>
                                </div>
                                        </td></tr>
                                
                                <tr><td id="delivery_label" class="col-xs-10">
                                <div class="control-group">
                                    <label>Delivery Point<font color="red"><b>*</b></font></label>
                                    <div class="controls">
                                        <!--<br>-->   
                                        <select name="delivery_point" id="delivery_point">
                                            <option value="">Select Delivery Point</option>
                                            <option value="1" selected="true">CCC</option>
                                            <option value="2">PMTCT</option>
                                        </select>
                                    </div>
                                </div>
                                        </td></tr>
                                
                                <tr><td class="col-xs-10">
                                <div class="control-group">
                                    <label> Date <font color="red"><b>*</b></font></label>
                                    <div class="controls">
                                        <input type="text" onchange="getperiod();" name ="date" id="date" data-date-end-date="0d" autocomplete="off" class="form-control dates" readonly placeholder="e.g yyyy-mm-dd">
                                        <input type="hidden"  name ="rowid" id="rowid"  />
                                    </div>
                                </div>
                                        </td></tr>
                                    <td class="col-xs-offset-10">
                                <div class="control-group">
                                    <label> Reporting Year <font color="blue"><b>*</b></font></label>
                                    <div class="controls">
                                        <input type="text" onchange="" name ="year" id="year" class="form-control input-sm" readonly placeholder="select date to autofill year">
                                        <input type="hidden"  name ="rowid" id="rowid"  />
                                    </div>
                                </div>
                                        </td>
                                          </tr>  
                                     <tr>
                                    <td class="col-xs-10">
                                <div class="control-group">
                                    <label> Reporting Month <font color="blue"><b>*</b></font></label>
                                    <div class="controls">
                                        <input type="text" onchange="" name="month" id="month"  class="form-control input-sm" readonly placeholder="select date to autofill month">
                                        <input type="hidden"  name ="rowid" id="rowid"  />
                                    </div>
                                </div>
                                        </td>
                                
                                
                                </tr>
                                
                                
                                  <tr><td class="col-xs-12">
                                
                                  <div class="control-group">
                                    <label>  Facility Name: <font color="red"><b>*</b></font></label>
                                    <div class="controls">
                                        <select  onchange="" name="facilityname" id="facilityname" class="form-control" >
                                            <option value="">Select Facility Name</option>
                                           
                                        </select>
                                    </div>
                                </div>
                                   </td></tr>
                                        
                                    </table>
                                         <table class='table table-striped table-bordered' id="dynamicindicators"> 
                                                              
                                    </table>
                                <table class="table table-striped table-bordered">
                                <tr><td colspan="3" class="col-xs-12">               
                                <div class="control-group col-xs-12">
                                  
                                    <div class="controls">
                                        <button id='savebutton' style="margin-left: 0%;" class="btn-lg btn-success active col-xs-12">
                                           Do nothing...
                                        </button>
                                     </div>
                                 </div>
                                </td></tr>
                                        
                                </table>
                            </div>
                        </div>
                        <!--/panel content-->
                    </div>
                    <!--/panel-->
                   <!--Data entry code-->
                            
                            </div>
                         
                            </div>
                        </div>

                    </div>
                    <!--/tabs-->

                </div>
                <!--/col-->
               
                <!--/col-span-6-->

            </div>
            <!--/row-->

          <div id="prev_month"></div> 

  <table id="table_data" class="table" style="margin-left: 50px; margin-right: 50px; width: 95%;" hidden="true">
          <thead><tr><th>ID</th><th>Date</th><th>Delivery Point</th><th>Year</th><th>Month</th><th>Indicator</th><th>MFLCode</th><th>Value</th><th>Date Key</th><th>Phone</th><th>Timestamp</th><th>Timestamp</th>  </tr></thead>
          <tbody id="data"> </tbody>
        </table>
	      
        </div>
        <!--/col-span-9-->
    </div>

<!-- /Main -->

<footer class="text-center"> &copy; HSDSA USAID </footer>

<div class="modal" id="addWidgetModal">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" id="refr1" aria-hidden="true">×</button>
                <h4 class="modal-title">Data Export</h4>
            </div>
            <div class="modal-body">
                <form id="exportdataform">
                   
              <button class=" btn-lg btn-success" style="text-align: center;" id="exportbutton" onclick="importdata();"> Export Data</button>
              
              
              <button class=" btn-lg btn-info" style="display:none;text-align: center;"  id="exportmsg" > Exporting Data..</button>
              <p id="exportresponse"> </p>
              </form>
            </div>
            <div class="modal-footer">
                <a href="#" data-dismiss="modal" class="btn" id="refr">Close</a>
              
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dalog -->
</div>
<!-- /.modal -->

<div class="modal" id="help">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h4 class="modal-title"  style="font-weight: 900; text-align: center;">Daily Evaluation of Retention User Guide v1.0.0</h4>
            </div>
            <div class="modal-body">
                <div>
                 <h4 style="font-weight: bold">a] About Application  </h4> 
                 <p>DER (Daily Evaluation of Retention form) is an offline browser based application that collects retention data daily.</p> 
                 <p>Data collected daily from users is stored locally on your browser and users can use this application even if they have not connected to Internet.</p> 
                 <p>Users can click on the upload button to upload data to the online server. This <b>requires</b> Internet connection.</p> 
                 <p><b style="color: red;">Note</b> Do not clear your browser history/cache/data before you upload this data to the Internet. This will delete all data.</p> 
                </div>         
                <div>
                    <h4 style="font-weight: bold;">b] First Time Use</h4>
                   <p>Kindly follow these steps to set up DER System: </p> 
                   <ol>
                    <li>Enter <b>URL</b> to this system This will be provided by M&E Or clinical team.</li>
                    <li>Add a user. Ensure you enter correct details and associate this user to the health facility.</li>
                    <li>Select reporting date to auto-complete reporting year and month </li>
                    <li>Select health facility.(When registering a user, the selected facility will be auto-selected) </li>
                    <li><b  style="color: red;">Kindly Note: </b> Entry fields only appears if reporting date and health facility are selected </li>
                   </ol>
                </div>
                <div>
                <h4 style="font-weight: bold;">c] Best Practices</h4>
                <ol>
                <li>Remember to do regular data backup</li>
                <li>Do not clear browser history/cache/data</li>
                <li>We recommend you use <b>Chrome/Mozilla Firefox</b> browsers</li>
                </ol>
                </div>
                
                <div>
                <h4 style="font-weight: bold;">d] Points to Note</h4>
                <ol>
                <li>Indicator <b>code 10 to 14</b> are cummulative indicators hence <b>yesterday's value</b> should not be more than <b>today's value</b>. Values are cummulated monthly.</li>
                <li>On the 1st of Every month,value for indicator <b>code 11</b> and <b>code 12</b> should not be more than that of indicator <b>code 3</b></li>
               </ol>
                </div>
              
            </div>
            <div class="modal-footer">
                <a href="#" data-dismiss="modal" class="btn">Close</a>
               
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dalog -->
</div>
<!-- Modal -->
<div class="modal fade" id="delete_conf" tabindex="-1" role="modal" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
          <h3 class="modal-title" id="exampleModalLabel" style="text-align: center; font-weight: 900;">Delete Current Records</h3>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
        <div class="modal-body" style="font-weight: 200;">
        Are you sure you want to delete this entry?
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-primary btn-success" data-dismiss="modal">No</button>
        <button type="button" id="btn_conf_delete" class="btn btn-primary btn-danger" data-dismiss="modal" >Yes, Am very sure</button>
      </div>
    </div>
  </div>
</div>

<!--Add User-->
<div class="modal fade" id="userdetails" role="modal" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
          <h4 class="modal-title" id="exampleModalLabel" style="text-align: center; font-weight: 900;"><u>Register a new User</u></h4>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
        <span aria-hidden="true">&times;</span>
        </button>
      </div>
        
   <form id="exportdataform">
        <div class="modal-body" style="font-weight: 200;">
            <div  class="row form-group">
                <div class="col-xs-3" style="clear: left;"> <label for="name" class="control-label">FullName<font color="red">*</font></label> </div>
                <div class="col-xs-8" style="padding: 3px 2px 3px 2px; float: left" ><input placeholder="Enter your fullname" type="text" name="fullname" id="fullname" class="form-control"> </div>  
      </div>
      <div  class="row form-group">
          <div class="col-xs-3" style="clear: left;"> <label for="name" class="control-label">Phone Number<font color="red">*</font></label> </div>
        <div  class="col-xs-8" style="padding: 3px 2px 3px 2px; float: left"><input placeholder="Phone Number" type="number" name="phone" id="phone" class="form-control"> </div>  
      </div>
      <div  class="row form-group">
          <div class="col-xs-3" style="clear: left;"> <label for="name" class="control-label">Email Address</label> </div>
        <div  class="col-xs-8" style="padding: 3px 2px 3px 2px; float: left"><input placeholder="Email Address (Optional)" type="email" name="email" id="email" class="form-control"> </div>  
      </div>
     
      <div  class="row">
         <div class="col-xs-3" style="clear: left;"> <label for="name" class="control-label">Health Facility<font color="red">*</font></label> </div>
        <div  class="col-xs-8" style="padding: 3px 2px 3px 2px; float: left">
            <select  name="mflcode" id="mflcode" multiple="true" class="form-control"> 
                <option value="">Chose health facility</option>  
            </select>
        </div>  
      </div>
      </div>
       </form>
      <div class="modal-footer">
        <button type="button" id="btn_add_user" class="btn btn-primary btn-success" data-dismiss="modal" >Add User</button>
      </div>
    </div>
  </div>
</div>


<!--Raw Data Report-->
<div class="modal fade" id="raw_data_popup" role="modal" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
      <div class="modal-content" id="report_values">
      <div class="modal-header">
          <h4 class="modal-title" id="exampleModalLabel" style="text-align: center; font-weight: 900;"><u>Generate Raw Data & Reporting Rates Report</u></h4>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
        <span aria-hidden="true">&times;</span>
        </button>
      </div>
        
   <form id="exportdataform">
        <div class="modal-body" style="font-weight: 200;">
            
            <div  class="row form-group">
                <div class="col-xs-3" style="clear: left;"> <label for="name" class="control-label">County<font color="red"></font></label> </div>
                <div class="col-xs-8" style="padding: 3px 2px 3px 2px; float: left" >
                <select  name="county" id="county" multiple="true" class="form-control"> 
                <option value="">Choose County</option>  
            </select>
        </div>  
      </div>
                 
      <div  class="row">
         <div class="col-xs-3" style="clear: left;"> <label for="name" class="control-label">Sub County<font color="red"></font></label> </div>
        <div  class="col-xs-8" style="padding: 3px 2px 3px 2px; float: left">
            <select  name="district" id="district" multiple="true" class="form-control"> 
                <option value="">Chose Sub County</option>  
            </select>
        </div>  
      </div>
            
                 
      <div  class="row">
         <div class="col-xs-3" style="clear: left;"> <label for="name" class="control-label">Health Facility<font color="red"></font></label> </div>
        <div  class="col-xs-8" style="padding: 3px 2px 3px 2px; float: left">
            <select  name="facility" id="facility" multiple="true" class="form-control"> 
                <option value="">Chose Facility</option>  
            </select>
        </div>  
      </div>
            
      <div  class="row form-group">
          <div class="col-xs-3" style="clear: left;"> <label for="name" class="control-label">Start Date<font color="red"></font></label> </div>
        <div  class="col-xs-8" style="padding: 3px 2px 3px 2px; float: left"><input placeholder="Start Date" type="text" readonly name="start_date" id="start_date" class="form-control datepicker"> </div>  
      </div>
      <div  class="row form-group">
          <div class="col-xs-3" style="clear: left;"> <label for="name" class="control-label">End Date</label> </div>
        <div  class="col-xs-8" style="padding: 3px 2px 3px 2px; float: left"><input placeholder="End Date" type="text" readonly name="end_date" id="end_date" class="form-control datepicker"> </div>  
      </div>
            
      </div>
       </form>
      <div class="modal-footer">
        <button type="button" id="btn_rawdata" class="btn btn-primary btn-success" >Generate</button>
      </div>
    </div>
      <div  class="modal-content" id="img_loading">
<img src="images/loading.gif" style="width:100%">
</div>
  </div>
</div>

<!--Manage User-->
<div class="modal fade" id="allusersinfo" role="modal" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header">
          <h4 class="modal-title" id="exampleModalLabel" style="text-align: center; font-weight: 900;"><u>Current Registered Users</u></h4>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
        <span aria-hidden="true">&times;</span>
        </button>
      </div>
        
        <form id="exportdataform">
            <table  class="table table-striped table-responsive" style="padding: 10px 30px 10px 30px" >
       <thead>
      <tr><th>Fullname</th><th>Phone</th><th>Email</th><th>Facility MFL Code</th><th>Action</th></tr>
      </thead>
      <tbody  id="registered_users">
      
      </tbody>
      </table>
       </form>
    </div>
  </div>
</div>
	<!-- script references -->
                <!--<script src="js/jquery-2.1.4.min.js"></script>-->
                <script src="js/jquery.min.js"></script>
		<script src="js/bootstrap.js"></script>
		<script src="js/scripts.js"></script>
                <script src="js/bootstrap-datepicker.min.js"></script>
                <script src="js/select2.min.js"></script>
                <script src="js/pouchdb-7.0.0.js"></script>
                <script src="js/pouchdb.find.js"></script>
                 
                  <script type="text/javascript" src="js/jquery.fileDownload.js"></script>
                 <script type="text/javascript" src="js/datatables.min.js"></script>
                 <script type="text/javascript" src="js/sweetalert.min.js"></script>

                 <script>
                  var db = new PouchDB('der_rri');
                  var db_delete = new PouchDB('der_rri_deleted');
                  var db_new = new PouchDB('der_rri_new');
                  var db_user = new PouchDB('der_rri_user');
                  //var hostname="http://hsdsacluster2.fhi360.org:8080/";
                  var hostname="http://localhost:8080/";
                  var application_name = "DER_RRI";
                 </script>
                 <script>
                    function getperiod(){
                        var current_date = $("#date").val();
                        var options = "";
                        var period_array = current_date.split("-");
                       var year = period_array[0];
                       var month = period_array[1];
                       
                   var json_months= {
		"shortname": ["Oct", "Nov", "Dec", "Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sept"],
		"monthno": [10, 11, 12, 1, 2, 3, 4, 5, 6, 7, 8, 9],
		"fullname": ["October", "November", "December", "January", "February", "March", "April", "May", "June", "July", "August", "September"]
                    };
                    
                    var current_month_index = json_months['monthno'].indexOf(parseInt(month));
                    var current_month = json_months['fullname'][current_month_index];
                    
                    if(parseInt(month)>10){
//                    options = "<option value=\""+month+"\">"+current_month+" "+(parseInt(year)-1)+"</option>";
                    year = parseInt(year)+1;
                    options = current_month+" - "+year;
                    }
                    else{
                    options = current_month+" - "+year;     
                    }
                    
                    if(current_date==""){
                        
                    }
                    else {
                        $("#year").val(year);
                        $("#month").val(options);
                        
                        var facilityID=$("#facilityname").val();
                        var delivery_point=$("#delivery_point").val();
                        
                         if(facilityID!="" && current_date!="" && delivery_point!=""){
                             
                             load_indicators();
                         }
                    }
                    } 
                     
                     </script>
                     <script>
                     function load_facilities(){
                       var output = "",output2 = ""; 
             $.getJSON("json/facilities.json",function(facilities){
             for( var a=0;a< facilities.length; a++){
                var facilityID=facilities[a].FacilityID;    
                var facilityName=facilities[a].FacilityName;
                var mflcode = facilities[a].MFLCode;
                      output+="<option value=\""+mflcode+"\">"+facilityName+" - ["+mflcode+"]</option>";
                      output2+="<option value=\""+mflcode+"\">"+facilityName+"</option>";
                 } 
//                $("#facilityname").html(output);
//                $("#facilityname").select2();
                
                // for user registration
                $("#mflcode").html(output2);
                $("#mflcode").select2();    
            });

        }
                    </script>
                     <script>
                     function load_indicators(){
                        var records = $("#records").val(); 
                        if(parseInt(records)<20){ // if records are more than 20 records block and upload.
                    var date = $("#date").val();
                    var facilityID = $("#facilityname").val();
                    var delivery_point = $("#delivery_point").val();
                    
                    if(date==null){date = "";}
                    if(facilityID==null){facilityID = "";}
                    if(delivery_point==null){delivery_point = "";}
//                    alert("facil:"+facilityID+":");
                    if(facilityID!="" && date!="" && delivery_point!=""){
                    
                    var yesterday = getYesterdaysDate(date);
                        get_yesterday_data(yesterday);
//                    alert("todays date : "+date+" yesterdays date : "+getYesterdaysDate(date));

                         var added=0;
                       var output = ""; 
                       var indicatorsName="";
             $.getJSON("json/indicators.json",function(indicators){
             for( var a=0;a< indicators.length; a++){
                var indicatorsID=indicators[a].IndicatorID;    
                indicatorsName=indicators[a].IndicatorName;
                var instructions = indicators[a].instructions;
                var isactive = indicators[a].isactive;
                
                if(isactive==1){
                    var _rev = "",value=0;
                    instructions = instructions.replace(/[(]/g, "(<i>");
                    instructions = instructions.replace(/[)]/g, "</i>)");
                    
                    if(facilityID!="" && date!="" && indicatorsID!=""){
                        date = date.replace(/[-]/g,"");
                  var id= date+"_"+facilityID+"_"+indicatorsID+"_"+delivery_point;
                
                
                
                 
                     var _rev="",value="";    
                      
//                    console.log("id is : "+id);

                    db.get(id, function(err, doc) {
                      if (err) { 
//                       console.log(err); 
                       $("#img_delete").hide();
                       $("#savebutton").html('Save');
                      }
                     else{  
                  _rev = doc._rev;
                  value = doc.value; 
                  $("#img_delete").show();
                  $("#savebutton").html('Update');
                     }
                     
                    indicatorsName=indicators[added].IndicatorName;
                    instructions=indicators[added].instructions;
                    indicatorsID=indicators[added].IndicatorID;
                    isactive=indicators[added].isactive;
                    $("#savebutton").show();
                    id= date+"_"+facilityID+"_"+indicatorsID+"_"+delivery_point;
                     var has_valid = 0;
                    var others_keyup = " onblur='";
                    var others = "";
                    if(indicatorsID>1 && indicatorsID<6){
                    others_keyup += " totalclients(); ";
                    has_valid++;
                    }
//                    if(indicatorsID<3){
//                    others_keyup += " missedclients(); ";
//                    has_valid++;
//                    }
                    
                    if(indicatorsID<3 || indicatorsID==10 || indicatorsID==11){
                    others_keyup += " checkdata(); ";
                    has_valid++;
                    }
                    
                    if(has_valid>0){
                     others_keyup+="'";   
                    }
                    else{
                      others_keyup="";   
                    }
                    
                    if(indicatorsID==6){
                      others += " readonly tabindex='-1' ";   
                    }

                      output+="<tr>"+
                        " <td class='col-xs-12'>"+
                         "<div class='control-group'>"+
                         "<div><b>"+indicatorsName+"</b> "+instructions+"</div>"+
                         "<div class='controls'>"+
                         "<input onkeypress='return numbers(event);' "+others_keyup+" required type='number' min ='0' max='5237' "+others+" value='"+value+"'  name='"+id+"' id='"+id+"' class='form-control data'>"+
                          "<input onkeypress='return numbers(event);' type='hidden' value='"+_rev+"'  name='_rev_"+id+"' id='_rev_"+id+"' class='form-control data'>"+
                         "</div></div>"+
                         "</td>"+
                         "</tr>"; 
//                  console.log(added+".--"+indicatorsID+"--"+instructions+"--"+indicatorsName); 
                $("#dynamicindicators").html(output); 
                indicatorsName="";
                 added++;
                     });
//                  console.log("indicator: "+indicatorsName); 
//          console.log(output);       
                }
                else{
                 output+="<tr>"+
                        " <td class='col-xs-12'>"+
                         "<div class='control-group'>"+
                         "<label><font color=\"red\">Error. Missing Info</font></label>"+
                         "<div class='controls'>"+
                         "One or more elements are missing. Date or Health Facility or Indicator Identifier."+
                         "</div></div>"+
                         "</td>"+
                         "</tr>";   
                }
                }
                }
            });
        }
        else{
//            missing date or health facility;
        }
                        }
        else{ // 10 or more records. No Entry must upload first
           var title = "Error. Data Not Uploaded";
           var text = "Dear User, Kindly connect to the Internet to Upload Your Data before any further data entry. We are trying to do this process automatically now. Incase it fails, you will do it manually.";
           var icon = "error";
           var button = "Close";
           
           notify(title,text,icon,button);  
           
           checkInternet(); 
           
           }
             }
            
                    </script>
                 <script>

                    function numbers(evt){
      
                        var charCode=(evt.which) ? evt.which : evt.keyCode
                         console.log(charCode); 
                         if( charCode===43 ||  charCode===9 ||  charCode===8 || charCode===46 || ( charCode >= 48 && charCode<=57)){

                         return true;   
                        }
                        else {
                        return false;
                        }
                     
                    }
                 </script>

                 <script type="text/javascript">
                $(document).ready(function(){
                        $("#user").select2();
                        $("#delivery_point").select2(); 
                          read_all_users();// load users for deleting
                         $('.dates').datepicker({
                             todayHighlight: true, clearBtn: true, autoclose: true,format: "yyyy-mm-dd"
                            });
                        load_facilities(); 
                        
                        $("#facilityname").change(function(){
                         var facilityID=$("#facilityname").val();
                         var delivery_point=$("#delivery_point").val();
                         
                         var date = $("#date").val();
                         if(facilityID!="" && date!="" && delivery_point!=""){
                             load_indicators();
                         }
                        });
                        
                        $("#delivery_point").change(function(){
                         var facilityID=$("#facilityname").val();
                         var delivery_point=$("#delivery_point").val();
                         var date = $("#date").val();
                         if(facilityID!="" && date!="" && delivery_point!=""){
                             load_indicators();
                         }
                        });
                        
           });  
   </script>
   
   
                 <script type="text/javascript">
            $(document).ready(function(){
                records_counter();
                get_user_info();
                
                $("#user_label").hide();
                $("#adduserbutton").show();
      
            $("#savebutton").click(function(){
             save_data();   
            });
            $("#btn_add_user").click(function(){
             add_user();   
            });
          
           });  
   </script>
   
   <script>
//     Database operations

function save_data(){
    if(checkif_allexist()){
        
    if(checkdata()){
        
    if(check_values_on1st()){
        
    
    if(compare_cumulatives()){
        
    progress(10);
    var id,reporting_date,year,month,mflcode,indic_value,date,phone,delivery_point;
        
     reporting_date = $("#date").val() ;
     year = $("#year").val() ;
     month = $("#month").val() ;
     mflcode = $("#facilityname").val(); 
     delivery_point = $("#delivery_point").val(); 
     
     date = reporting_date.replace(/[-]/g,"");
     id = date+"_"+mflcode+"_"+delivery_point;
     phone = $("#user").val();
     
     if(phone!=""){// has use added
      
     if(mflcode!=""){// has facility selected
         
     
     
     //add to record counter
     db_new.put({
      _id: id,
      date: reporting_date,
      mflcode: mflcode
    }, function(err, response) {
      if (err) {console.log(err); }
//      console.log(response);
      // handle response
    });
    
    //end of adding to record counter
     
     $.getJSON("json/indicators.json",function(indicators){
    var indic_count = indicators.length;
     var json_array = [];
         
    for( var a=0;a< indic_count; a++){
    var indicatorsID=indicators[a].IndicatorID;  
     id = date+"_"+mflcode+"_"+indicatorsID+"_"+delivery_point;   
     indic_value = $("#"+id).val();
     var timeStamp = new Date().toUTCString();
//          alert("id is  : "+id+" value is : "+indic_value); 
    var _rev = $("#_rev_"+id).val();
if(_rev==""){
     var obj_item ={ 
        _id: id,
        date: reporting_date,
        delivery_point: delivery_point,
        year: year,
        month: month,
        mflcode: mflcode,
        indicator: indicatorsID,
        value: indic_value,
        phone: phone,
        timestamp: timeStamp};
    
    json_array.push(obj_item);        
    }
    else{
         var obj_item ={ 
        _id: id,
        _rev: _rev,
        date: reporting_date,
        delivery_point: delivery_point,
        year: year,
        month: month,
        mflcode: mflcode,
        indicator: indicatorsID,
        value: indic_value,
        timestamp: timeStamp};
    json_array.push(obj_item);      
    }
    progress(16+((a+1)*6));
    }
//     console.log(json_array);   
//     console.log(json_array.length);
        db.bulkDocs(
         json_array
              );
      $("#savebutton").html('Update');
      $("#img_delete").show();
        });
        
//        records_counter();
        refresh();
    }
    else{
     var title = "Error. Missing Health Facility";
     var text = "Kindly Select a health Facility and try saving again";
     var icon = "error";
     var button = "Close";
           notify(title,text,icon,button);      
    }
    }
    else{
      var title = "Error. Missing User";
      var text = "Kindly select/add user.";
      var icon = "error";
      var button = "Close";
           
           notify(title,text,icon,button);   
    }
    }
    else{
        
    }
    
    }
    else{
        
  }
}
else{
//    alert("Values entered do not add up");
}
    }
else{
//    alert("Error. Enter all data");
}
}
       </script>
       
       <script>
          
     $(document).ready(function(){
     $("#img_delete").hide();
     $("#savebutton").hide();
      create_index();// index our fields     
    $("#upload_data").click(function(){
      checkInternet(); 
    });
    
   $("#btn_conf_delete").click(function(){
       //delete these entries for this day
   delete_records();    
   }); 
   $("#refreshpage").click(function(){
       // refresh page
   reloading();    
   }); 
    
    }); 
 
    
    function delete_records(){
        $("#savebutton").html('Save');
   var id,reporting_date,mflcode,date,delivery_point;
     reporting_date = $("#date").val() ;
     mflcode = $("#facilityname").val(); 
     delivery_point = $("#delivery_point").val(); 
     
     date = reporting_date.replace(/[-]/g,"");
   var delete_id =  date+"_"+mflcode+"_"+delivery_point;
   
   //add the record to the deleted log
    db_delete.put({
      _id: delete_id,
      date: reporting_date,
      mflcode: mflcode
    }, function(err, response) {
      if (err) {console.log(err); }
//      console.log(response);
      //add it to new records
       db_new.put({
      _id: delete_id,
      date: reporting_date,
      mflcode: mflcode
    }, function(err, response) {
      if (err) {console.log(err); }
//      console.log(response);
      // handle response
      records_counter(); // to count and enable key
    });
      
      
    });

     $.getJSON("json/indicators.json",function(indicators){
    var indic_count = indicators.length;
         
    for( var a=0;a< indic_count; a++){
    var indicatorsID=indicators[a].IndicatorID;  
     id = date+"_"+mflcode+"_"+indicatorsID+"_"+delivery_point;
     $("#"+id).val("");
//          alert("id is  : "+id+" value is : "+indic_value); 
    var _rev = $("#_rev_"+id).val();
         $("#_rev"+id).val("");
         
    db.remove(id,_rev, function(err, response) {
    if (err) {console.log(err); }
    console.log(response);
//       console.log("id : "+id);
  });
    }
     $("#img_delete").hide();
  });   
    }
    
function send_data(){
    progress(28);
    var url = "save_data";
         db.allDocs({
              include_docs: true,
              attachments: true
            }).then(function (result) {
              // handle result
              var data = JSON.stringify(result);
             var form_data = {"results":data};
            progress(25);
        $.post(url,form_data,function(output){
//           console.log(output);
        console.log("upload:::"+output);
        if(output==null || output==""){
   //error while uploading. 
           var title = "Error Sending data to Server";
           var text = "An error occured while uploading data to server. Kindly contact developers.";
           var icon = "error";
           var button = "Close";
           
           notify(title,text,icon,button);
           progress(0);
        }
        else{
           progress(75);
           
            db.destroy(function (err, response) {
            if (err) {
              console.log(err);
              db = new PouchDB('der_rri');
            } else {
                console.log(response);
                db = new PouchDB('der_rri');
                send_users(); 
            }
          });
        }
         });  
            }).catch(function (err) {
//              console.log(err);
            });
}

function execute_deleted_db(){
        progress(5);
        var url = "delete_data";
       db_delete.allDocs({
              include_docs: true,
              attachments: true
            }).then(function (result) {
              // handle result
              var data = JSON.stringify(result);
             var form_data = {"results":data};
        progress(10);
        $.post(url,form_data,function(output){
//           console.log(output); 
        progress(25);
           send_data();
         });  
             console.log(result);
            }).catch(function (err) {
//              console.log(err);
            });
            
}

function create_index(){
    db.createIndex({
  index: {
    fields: ['date','month','year','value','indicator','mflcode']
  }
}, function (err, result) {
  if (err) { return console.log(err); }
//  console.log("indexing results : "+result);
  // handle result
});
}

function remove_deleted(){
    progress(90);
        db_delete.destroy(function (err, response) {
          if (err) {
            console.log(err);
          } else {
              console.log(response);
           db_delete = new PouchDB('der_rri_deleted');
           delete_records_counter();
           progress(95);
          }
        });
}

function records_counter(){ 
  db_new.allDocs(function(err, response) {
    if (err) { return console.log(err); }
    console.log("New records : "+response.rows.length);
    var records = response.rows.length;
    if(records==0){
      $("#upload_data").hide();   
    }
    else{
        $("#records").val(records);
        $("#upload_data").show();
        if(parseInt(records)>1){
     $("#toupload").html("Upload [<font color=\"yellow\">"+records+" Records</font>]"); 
        }
        else{
       $("#toupload").html("Upload [<font color=\"yellow\">"+records+" Record</font>]");       
        }
    }
            
//    progress(0);
});
}

function delete_records_counter(){
    progress(99);
   db_new.destroy(function (err, response) {
          if (err) {
            console.log(err);
          } else {
              console.log(response);
           db_new = new PouchDB('der_rri_new');
           
           progress(100);
           $("#records").val(0);
           records_counter();
          }
        }); 
}
  
function progress(per_value){
    if(per_value==0){
    $("#progess").html("Error Occured ");
    $("#progess").css({'width':"100%"}); 
    setTimeout(waitnhide, 3000);
    }
    else if(per_value==100){
    $("#progess").html("Task Completed");
    $("#progess").css({'width':"100%"}); 
    setTimeout(waitnhide, 3000);
    }
    else{
    $("#progess").html(per_value+"% Completed. Please Wait...");
    $("#progess").css({'width':per_value+"%"});
    }
    
    if(per_value<30){
     $("#progess").addClass('progress-bar-danger');  
     $("#progess").removeClass('progress-bar-success'); 
    }
    if(per_value>=30 && per_value<60){
     $("#progess").addClass('progress-bar-warning');   
     $("#progess").removeClass('progress-bar-danger');   
    }
    if(per_value>=60 && per_value<80){
     $("#progess").addClass('progress-bar-info'); 
     $("#progess").removeClass('progress-bar-warning');   
     $("#progess").removeClass('progress-bar-danger');  
    }
    if(per_value>=90){
     $("#progess").addClass('progress-bar-success'); 
     $("#progess").removeClass('progress-bar-info'); 
     $("#progess").removeClass('progress-bar-warning');   
     $("#progess").removeClass('progress-bar-danger');  
    }
}

function waitnhide(){
     $("#progess").html("");
     $("#progess").css({'width':"0%"});          
}


function totalclients(){
var date,reporting_date,mflcode,ind2=0,ind3=0,ind4=0,ind5=0,delivery_point;

    reporting_date = $("#date").val() ;
    mflcode = $("#facilityname").val(); 
    delivery_point = $("#delivery_point").val(); 
    
    date = reporting_date.replace(/[-]/g,"");
    
    if($("#"+date+"_"+mflcode+"_2_"+delivery_point).val()!=""){ind2 = $("#"+date+"_"+mflcode+"_2_"+delivery_point).val();}
    if($("#"+date+"_"+mflcode+"_3_"+delivery_point).val()!=""){ind3 = $("#"+date+"_"+mflcode+"_3_"+delivery_point).val();}
    if($("#"+date+"_"+mflcode+"_4_"+delivery_point).val()!=""){ind4 = $("#"+date+"_"+mflcode+"_4_"+delivery_point).val();}
    if($("#"+date+"_"+mflcode+"_5_"+delivery_point).val()!=""){ind5 = $("#"+date+"_"+mflcode+"_5_"+delivery_point).val();}
   
    var total = parseInt(ind2)+parseInt(ind3)+parseInt(ind4)+parseInt(ind5);
    $("#"+date+"_"+mflcode+"_6_"+delivery_point).val(total);
     
}
function missedclients(){
var date,reporting_date,mflcode,ind1=0,ind2=0,delivery_point;

    reporting_date = $("#date").val() ;
    mflcode = $("#facilityname").val(); 
    delivery_point = $("#delivery_point").val(); 
    
    date = reporting_date.replace(/[-]/g,"");
    
    if($("#"+date+"_"+mflcode+"_1_"+delivery_point).val()!=""){ind1 = $("#"+date+"_"+mflcode+"_1_"+delivery_point).val();}
    if($("#"+date+"_"+mflcode+"_2_"+delivery_point).val()!=""){ind2 = $("#"+date+"_"+mflcode+"_2_"+delivery_point).val();}
   
    var total = parseInt(ind1)-parseInt(ind2);
    $("#"+date+"_"+mflcode+"_7_"+delivery_point).val(total);
}


function refresh(){
//    location.reload(); 
setTimeout(reloading, 1500);
}

function reloading(){
    location.reload();
}

function checkdata(){
    var indic1=0,indic2=0,indic10=0,indic11=0,delivery_point;
    var date,reporting_date,mflcode;
    var returned=true;
    reporting_date = $("#date").val() ;
    mflcode = $("#facilityname").val(); 
    
    delivery_point = $("#delivery_point").val(); 
    
    date = reporting_date.replace(/[-]/g,"");
    
            if($("#"+date+"_"+mflcode+"_1_"+delivery_point).val()!=""){indic1 = $("#"+date+"_"+mflcode+"_1_"+delivery_point).val();}
            if($("#"+date+"_"+mflcode+"_2_"+delivery_point).val()!=""){indic2 = $("#"+date+"_"+mflcode+"_2_"+delivery_point).val();}
            if($("#"+date+"_"+mflcode+"_10_"+delivery_point).val()!=""){indic10 = $("#"+date+"_"+mflcode+"_10_"+delivery_point).val();}
            if($("#"+date+"_"+mflcode+"_11_"+delivery_point).val()!=""){indic11 = $("#"+date+"_"+mflcode+"_11_"+delivery_point).val();}
//            alert("code 2:"+indic2+" code 1:"+indic1);
           if(parseInt(indic2)>parseInt(indic1)){
               returned = false;
//               error for both
            $("#"+date+"_"+mflcode+"_1_"+delivery_point).css("border-color", "#e60000");
            $("#"+date+"_"+mflcode+"_2_"+delivery_point).css("border-color", "#e60000");
            $("#"+date+"_"+mflcode+"_1_"+delivery_point).css("background-color", "#ff6666");
            $("#"+date+"_"+mflcode+"_2_"+delivery_point).css("background-color", "#ff6666");
            
           var title = "Error in Calculation";
           var text = "Kindly value in Code no 2 is greater than value in code 1.";
           var icon = "error";
           var button = "Close";
           
           notify(title,text,icon,button);
           
            $("#"+date+"_"+mflcode+"_1_"+delivery_point).attr("title", "Indicator Code 2 is greater than indicator code 1");
            $("#"+date+"_"+mflcode+"_2_"+delivery_point).attr("title", "Indicator Code 2 is greater than indicator code 1");
           } 
           else{
           returned = true;   
            $("#"+date+"_"+mflcode+"_1_"+delivery_point).css("border-color", "#0069cc");
            $("#"+date+"_"+mflcode+"_2_"+delivery_point).css("border-color", "#0069cc");
            $("#"+date+"_"+mflcode+"_1_"+delivery_point).css("background-color", "#ffffff");
            $("#"+date+"_"+mflcode+"_2_"+delivery_point).css("background-color", "#ffffff");
            
           }
          if(parseInt(indic11)>parseInt(indic10)){
             returned = false;
            $("#"+date+"_"+mflcode+"_10_"+delivery_point).css("border-color", "#e60000");
            $("#"+date+"_"+mflcode+"_11_"+delivery_point).css("border-color", "#e60000");
            $("#"+date+"_"+mflcode+"_10_"+delivery_point).css("background-color", "#ff6666");
            $("#"+date+"_"+mflcode+"_11_"+delivery_point).css("background-color", "#ff6666");
            
            $("#"+date+"_"+mflcode+"_10_"+delivery_point).attr("title", "Indicator Code 11 is greater than indicator code 10");
            $("#"+date+"_"+mflcode+"_11_"+delivery_point).attr("title", "Indicator Code 11 is greater than indicator code 10");
            
           var title = "Error in Calculation";
           var text = "Kindly value in Code no 11 is greater than value in code 10.";
           var icon = "error";
           var button = "Close";
           
           notify(title,text,icon,button);
          }
          else{
              returned = true;
              
            $("#"+date+"_"+mflcode+"_10_"+delivery_point).css("border-color", "#0069cc");
            $("#"+date+"_"+mflcode+"_11_"+delivery_point).css("border-color", "#0069cc");
            $("#"+date+"_"+mflcode+"_10_"+delivery_point).css("background-color", "#ffffff");
            $("#"+date+"_"+mflcode+"_11_"+delivery_point).css("background-color", "#ffffff");
          }
           
    return returned;
}

function checkif_allexist(){
    var date,reporting_date,mflcode,missing=0,delivery_point;
    var returned=true;
    reporting_date = $("#date").val() ;
    mflcode = $("#facilityname").val(); 
    delivery_point = $("#delivery_point").val(); 
    
    date = reporting_date.replace(/[-]/g,"");
    for(var i=1;i<=14;i++){
        if($("#"+date+"_"+mflcode+"_"+i+"_"+delivery_point).val()=="")
        {
        missing++;
        $("#"+date+"_"+mflcode+"_"+i+"_"+delivery_point).css("border-color", "#e60000");
        $("#"+date+"_"+mflcode+"_"+i+"_"+delivery_point).css("background-color", "#ff6666");
        }
        else{
         $("#"+date+"_"+mflcode+"_"+i+"_"+delivery_point).css("border-color", "#0069cc");
         $("#"+date+"_"+mflcode+"_"+i+"_"+delivery_point).css("background-color", "#ffffff");   
        }
    }
    if(missing>0){
     returned = false;   
    }
    return returned;
}

function checkInternet(){
    jQuery.ajax({
        url:'checkinternet',
        type:"post",
        dataType:"json",
        success:function(response){
        if(response.isreacheable){
          execute_deleted_db();    
         }
         else{
           var title = "Error. No Internet connections";
           var text = "Kindly re-connect your internet and then try uploading again.";
           var icon = "error";
           var button = "Close";
           
           notify(title,text,icon,button);
         }
        }, 
        error: function(jqXHR, textStatus, errorThrown) {
           var title = "Error. No Internet connections";
           var text = "Kindly re-connect your internet and then try uploading again.";
           var icon = "error";
           var button = "Close";
           
           notify(title,text,icon,button);
            }
  });
}
function notify(title,text,icon,button){
 swal({
            title: title,
            text: text,
            icon: icon,
            button: button
          });   
}

function check_values_on1st(){
    var date,reporting_date,mflcode,indic3="",indic11="",indic12="",delivery_point;
    var returned=true;
    reporting_date = $("#date").val() ;
    if(reporting_date.endsWith("-01")){
    mflcode = $("#facilityname").val(); 
    delivery_point = $("#delivery_point").val(); 
    
    date = reporting_date.replace(/[-]/g,"");
    
    indic3=$("#"+date+"_"+mflcode+"_3_"+delivery_point).val();
    indic11=$("#"+date+"_"+mflcode+"_11_"+delivery_point).val();
    indic12=$("#"+date+"_"+mflcode+"_12_"+delivery_point).val();
    if(indic3==""){indic3=0;}
    if(indic11==""){indic11=0;}
    if(indic12==""){indic12=0;}
    
    if(parseInt(indic11)>parseInt(indic3))
    {
        $("#"+date+"_"+mflcode+"_3_"+delivery_point).css("border-color", "#e60000");
        $("#"+date+"_"+mflcode+"_3_"+delivery_point).css("background-color", "#ff6666");
        
        $("#"+date+"_"+mflcode+"_11_"+delivery_point).css("border-color", "#e60000");
        $("#"+date+"_"+mflcode+"_11_"+delivery_point).css("background-color", "#ff6666");
                returned = false;
                
          var title = "Error. Incorrect values";
           var text = "Number of clients traced and came back (Code 11) cannot be more than number of clients with unscheduled visits (Code 3) on 1st of any month";
           var icon = "error";
           var button = "Close";
           
           notify(title,text,icon,button);       
    }
    
    if(parseInt(indic12)>parseInt(indic3))
    {
        $("#"+date+"_"+mflcode+"_3_"+delivery_point).css("border-color", "#e60000");
        $("#"+date+"_"+mflcode+"_3_"+delivery_point).css("background-color", "#ff6666");
        
        $("#"+date+"_"+mflcode+"_12_"+delivery_point).css("border-color", "#e60000");
        $("#"+date+"_"+mflcode+"_12_"+delivery_point).css("background-color", "#ff6666");
                returned = false;
                
           var title = "Error. Incorrect values";
           var text = "Number of defaulters traced and came back  from the 2 previous months (Code 12) cannot be more than number of clients with unscheduled visits (Code 3) on 1st of any month";
           var icon = "error";
           var button = "Close";
           
           notify(title,text,icon,button);  
    }
    
   
   
    }
    else{
        returned = true;
    }
    return returned;
}

function getYesterdaysDate(reporting_date) {
    var date = new Date(reporting_date);
    date.setDate(date.getDate()-1);
    var month=0,day=0,yesterdate;
    month = (date.getMonth()+1);
    day = date.getDate();
    
    if(month<10){month = "0"+month;}
    if(day<10){day = "0"+day;}
    
    yesterdate = date.getFullYear()+'-'+month+'-'+day;
    return  yesterdate;
  
}

function get_yesterday_data(reporting_date){
     var mflcode = $("#facilityname").val(); 
     var delivery_point = $("#delivery_point").val();
     
     var date = reporting_date.replace(/[-]/g,"");
    var id="",output="",_rev="",value="";
    var indic_id=10;
  for(var i=10;i<=14;i++){
      
   id = date+"_"+mflcode+"_"+i+"_"+delivery_point;
//   alert("i:"+i);
  
      db.get(id, function(err, doc) {
        if (err) {
            value="0";
        }
       else{  
            _rev = doc._rev;
            value = doc.value; 
       }
       
     id = date+"_"+mflcode+"_"+indic_id+"_"+delivery_point;  
    output+="<input required type='hidden' min ='0' max='5237' value='"+value+"'  name='"+id+"' id='"+id+"' class='form-control data'>"; 
//    alert(output);
    $("#prev_month").html(output); 
    indic_id++;
    }); 
  }  
  
}




function compare_cumulatives(){
    var returned=false;
    var not_matching=0;
    var reporting_date = $("#date").val() ;
    
    if(!reporting_date.endsWith("-01")){// if it is not 1st of each month do not check for cumulatives
        
    var yesterday = getYesterdaysDate(reporting_date) ;
   var mflcode = $("#facilityname").val(); 
   var delivery_point = $("#delivery_point").val(); 
   
   var date = reporting_date.replace(/[-]/g,"");
   var date_yester = yesterday.replace(/[-]/g,"");
   var id="",id_yester="",value="",value_yester="";
   for(var i=10;i<=14;i++){
   id = date+"_"+mflcode+"_"+i+"_"+delivery_point;
   id_yester = date_yester+"_"+mflcode+"_"+i+"_"+delivery_point;
   
   value = $("#"+id).val();
   value_yester= $("#"+id_yester).val();
   if(value==""){value=0;}
   if(value_yester==""){value_yester=0;}
//    alert(i+" yesterday : "+value_yester+" value today : "+value);
 if(parseInt(value_yester)>parseInt(value)){
    $("#"+id).css("border-color", "#e60000");
    $("#"+id).css("background-color", "#ff6666");    
    not_matching++;  
}
 } 
  if(not_matching>0){
           var title = "Error. Incorrect Cummulative Values";
           var text = "Values for indicators highlighted in red are cummulative hence yesterday's value should not be more than today's value";
           var icon = "error";
           var button = "Close";   
       notify(title,text,icon,button);
       returned = false;
  }
  else{
      returned=true;
  }
    }
    else{
      returned=true;   
    }

        return returned;
}

function get_user_info(){
//    alert("called");
db_user.allDocs({
  include_docs: true,
  attachments: true
}, function(err, response) {
  if (err) { 
      console.log("error users is : "+err);
      $("#user_label").hide();
      $("#adduserbutton").show();
      $("#manageuserbutton").hide();
    }
    else{
        
      //manage results here
        var num_users = response.total_rows;
         var array_data = response.rows;
         var fullname="",email="",phone="",mflcodes="",mflcode="",output="",output2="";
         
         
         if(num_users>0){
        for(var i=0; i<num_users;i++){
     var indicator_data = array_data[i].doc;
              mflcodes += indicator_data.mflcode+",";
                fullname=indicator_data.fullname;
                email=indicator_data.email;
                phone=indicator_data._id;
                mflcode=indicator_data.mflcode;
              output2+="<option value=\""+phone+"\">"+fullname+" - ["+mflcode+"]</option>";  
          }
         var output = ""; 
             $.getJSON("json/facilities.json",function(facilities){
             for( var a=0;a< facilities.length; a++){
                var facilityID=facilities[a].FacilityID;    
                var facilityName=facilities[a].FacilityName;
                var mflcode = facilities[a].MFLCode;
                if(mflcodes.indexOf(mflcode) != -1){
                      output+="<option value=\""+facilityID+"\">"+facilityName+" - ["+mflcode+"]</option>";
                  }
                 } 
                $("#facilityname").html(output);
                $("#facilityname").select2();
                
            });

//          alert(output);
           $("#user").html(output2);
           $("#user").select2();
           $("#user_label").show();
           $("#manageuserbutton").show();
         }
         else{
      $("#user_label").hide();
      $("#adduserbutton").show();
      $("#manageuserbutton").hide();     
         }
           
//           $("#adduserbutton").hide(); 
//         alert("something to display");
    }
  // handle result
});
}

function add_user(){
   var fullname,email,phone,mflcode;
   fullname = $("#fullname").val();
   email = $("#email").val();
   phone = $("#phone").val();
   mflcode = $("#mflcode").val();
   
       db_user.put({
       _id: phone,
       fullname: fullname,
       email: email,
       mflcode: mflcode
         }).then(function (response) {
         console.log(response);
         get_user_info();
         read_all_users();
         }).catch(function (err) {
           console.log(err);
         });
}

function send_users()
{
    progress(78);
    var url = "save_users";
         db_user.allDocs({
              include_docs: true,
              attachments: true
            }).then(function (result) {
              // handle result
              var data = JSON.stringify(result);

             var form_data = {"results":data};
            progress(80);
        $.post(url,form_data,function(output){
//           console.log(output); 
            progress(90);
           remove_deleted();
         });  
             console.log(result);
            }).catch(function (err) {
//              console.log(err);
            });  
}


function read_all_users(){
db_user.allDocs({
  include_docs: true,
  attachments: true
}, function(err, response) {
  if (err) { 
      console.log("error users is : "+err);
      $("#user_label").hide();
      $("#adduserbutton").show();
      load_indicators();
    }
    else{
      //manage results here
        var num_users = response.total_rows;
         var array_data = response.rows;
         var fullname="",email="",phone="",mflcode="",output="",_rev;
        for(var i=0; i<num_users;i++){
     var indicator_data = array_data[i].doc;
                fullname=indicator_data.fullname;
                email=indicator_data.email;
                phone=indicator_data._id;
                mflcode=indicator_data.mflcode;
                _rev = indicator_data._rev;
              output+="<tr><td>"+fullname+"</td><td>"+phone+"</td><td>"+email+"</td><td>"+mflcode+"</td><td><input type='hidden' name='id_"+i+"' id='id_"+i+"' value='"+phone+"' /><input type='hidden' name='rev_"+i+"' id='rev_"+i+"' value='"+_rev+"' /><img src=\"images/delete.png\" onclick=\"delete_user("+i+");\" style=\"width: 20%; height: 30%; \"></td></tr>";  
          }
            load_indicators();
           $("#registered_users").html(output);
//           $("#user").select2();
//           $("#user_label").show();
//           $("#adduserbutton").hide(); 
    }

});  
}

function delete_user(pos){
var phone=$("#id_"+pos).val();
var _rev=$("#rev_"+pos).val();

db_user.remove(phone,_rev, function(err, response) {
    if (err) { return console.log(err); }
    else{
   progress(100);
   
   var title = "Success";
           var text = "User Details Deleted Successfully";
           var icon = "success";
           var button = "Ok";
           
 notify(title,text,icon,button);
   
   setTimeout(reloading,2000);
        }
  });
}
 </script>
 
     
    <script>
      $(document).ready(function() {
          
            $("#img_loading").hide();
            $("#report_values").show();
            
         load_counties();
         $("#county").select2();
         $("#district").select2();
         $("#facility").select2();
         
         $("#county").change(function(){
         load_sub_counties();    
         });
         $("#district").change(function(){
         load_facilities_2();    
         });
         
        //date pickers here 
         $('.datepicker').datepicker({
             format: 'yyyy-mm-dd'
         });
        $("#btn_rawdata").click(function(){
               jQuery.ajax({
        url:'checkinternet',
        type:"post",
        dataType:"json",
        success:function(response){
        if(response.isreacheable){
         generate_raw_data();  
         }
         else{
           var title = "Error. No Internet connections";
           var text = "Kindly re-connect your internet and then try Generating Report.";
           var icon = "error";
           var button = "Close";
           
           notify(title,text,icon,button);
         }
        }, 
        error: function(jqXHR, textStatus, errorThrown) {
           var title = "Error. No Internet connections";
           var text = "Kindly re-connect your internet and then try Generating Report.";
           var icon = "error";
           var button = "Close";
           
           notify(title,text,icon,button);
            }
    }); 
        }); 
         
        });   
        
        
        
        
    function load_counties(){
       $.ajax({
        url:'load_counties',
        type:"post",
        dataType:"html",
        success:function(output){
        $("#county").html(output);
        $("#county").select2(); 
         // ouput
        }
    });   

   } 
    function load_sub_counties(){
        var county= $("#county").val();
     county = (""+county).split(",").join("_");
       $.ajax({
        url:'load_district?counties='+county,
        type:"post",
        dataType:"html",
        success:function(output){
         $("#district").html(output);
         $("#district").select2();
         // ouput
        }
    });   

   } 
   
    function load_facilities_2(){
  var district= $("#district").val();
     district = (""+district).split(",").join("_");
       $.ajax({
        url:'load_facilities?districts='+district,
        type:"post",
        dataType:"html",
        success:function(output){
        $("#facility").html(output);
        $("#facility").select2(); 
         // ouput
        }
    });   

   } 
   
    function  generate_raw_data(){
            $("#img_loading").show();
            $("#report_values").hide();
            
        var counties = $("#county").val();
        var districts = $("#district").val();
        var facilities = $("#facility").val();
        
        var start_date = $("#start_date").val();
        var end_date = $("#end_date").val();
        
        if(counties==null){counties="";}
        if(districts==null){districts="";}
        if(facilities==null){facilities="";}
        if(start_date==null){start_date="";}
        if(end_date==null){end_date="";}
        
        
        counties = (""+counties).split(",").join("_");
        districts = (""+districts).split(",").join("_");
        facilities = (""+facilities).split(",").join("_");
        
        start_date = (""+start_date).split("-").join("_");
        end_date = (""+end_date).split("-").join("_");
    
        var url = "RawData?county="+counties+"&&district="+districts+"&&facility="+facilities+"&&start_date="+start_date+"&&end_date="+end_date;
        
            $.fileDownload(url)
            .done( function () {
            $("#img_loading").hide();
            $("#report_values").show();
//            alert("Report Done");
                        })
            .fail(function () {
            $("#img_loading").hide();
            $("#report_values").show();
            alert('Report generation failed, kindly try again!'); 
             });
     
    }
    
    </script>
</body>
</html>
