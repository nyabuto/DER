<%-- 
    Document   : index
    Created on : Aug 17, 2018, 3:17:19 PM
    Author     : 
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<!--<html  manifest="der.appcache">-->
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
                
                <style>
                input:focus {
                    border-color: red;
                }
                .select2-container{ width: 100% !important; }
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

            
            
          <h5 style="text-align: center;color:blue;">Daily Evaluation of Retention Form</h5>
            
            <div class="row">
                <!-- center left-->
                <div class="col-md-12">
                   
                    <div class="btn-group btn-group-justified">
                        <a href="#" id='refreshpage' class="btn btn-primary col-sm-3">
                            <i class="glyphicon glyphicon-refresh"></i>
                            <br> Refresh
                        </a>
                        
                        <a href="#" class="btn btn-primary col-sm-3" id="upload_data">
                            <i class="glyphicon glyphicon-upload"></i>
                            <div id="toupload">[0 Records] Upload Data to Server</div>
                        </a>
<!--                       <a class="btn btn-primary col-sm-3" title="Excel report" data-toggle="modal" href="#excelreport">
                            <i class="glyphicon glyphicon-stats"></i>
                            <br> Excel Report
                        </a> -->
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
                                    <tr><th style="text-align:center"><div><b>Enter/Edit Daily Evaluation of Retention Data</b></div><div style="float: right;text-align: right;"><a  data-toggle="modal" href="#delete_conf"><img src="images/delete.png" id="img_delete" style="width: 30%; height: 30%; "></a></div></th></tr>
                                    <tr><th style="text-align:center">
                                        
                                       <div class="progress">
                                           <div class="progress-bar" id="progess" role="progressbar" style="width: 0%;" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                                      </div>     
                                            
                                        </th></tr>
                                
                                    <tr>
                                 
                                <tr><td id="user_label" class="col-xs-10">
                                <div class="control-group">
                                    <label><font color="red"><b>*</b></font> User </label>
                                    <div class="controls">
                                        <!--<br>-->   
                                        <select name="user" id="user">
                                            <option value="">Select User</option>
                                        </select>
                                    </div>
                                </div>
                                        </td></tr>
                                
                                <tr><td class="col-xs-10">
                                <div class="control-group">
                                    <label><font color="red"><b>*</b></font> Date </label>
                                    <div class="controls">
                                        <input type="text" onchange="getperiod();" name ="date" id="date" data-date-end-date="0d" autocomplete="off" class="form-control dates" readonly placeholder="e.g yyyy-mm-dd">
                                        <input type="hidden"  name ="rowid" id="rowid"  />
                                    </div>
                                </div>
                                        </td></tr>
                                    <td class="col-xs-offset-10">
                                <div class="control-group">
                                    <label><font color="blue"><b>*</b></font> Reporting Year </label>
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
                                    <label><font color="blue"><b>*</b></font> Reporting Month </label>
                                    <div class="controls">
                                        <input type="text" onchange="" name="month" id="month"  class="form-control input-sm" readonly placeholder="select date to autofill month">
                                        <input type="hidden"  name ="rowid" id="rowid"  />
                                    </div>
                                </div>
                                        </td>
                                
                                
                                </tr>
                                
                                
                                  <tr><td class="col-xs-12">
                                
                                  <div class="control-group">
                                    <label> <font color="red"><b>*</b></font>  Facility Name:</label>
                                    <div class="controls">
                                        <select  onchange="" name="facilityname" id="facilityname" class="form-control" >
                                            <option>Select Facility Name</option>
                                           
                                        </select>
                                    </div>
                                </div>
                                   </td></tr>
                                        
                                    </table>
                                         <table class='table table-striped table-bordered' id="dynamicindicators"> 
                                <!------INDICATORS----->
                                 <tr ><td class='col-xs-12' colspan='3'>
                                 <div class='control-group'>
                                    <label><font color='red'><b></b></font></label>
                                  </div></td>
                                 </tr>                                 
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

          <div id="prev_month">Here for previous data</div> 


            
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
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h4 class="modal-title">Help</h4>
            </div>
            <div class="modal-body">
                <p>This  application is created for aiding users in collecting data for the Matching Order indicators which is done weekly. One is expected to enter data per facility.</p>
                <h3>Indicators</h3>
                <p>The specific indicators that one should enter data for are;</p>
                <ul>


<li> # viral load tests for mothers target</li>
<li> # viral load tests done for mothers [cumulative]</li>



                </ul>
             <h3>Loading Facilities</h3>
                 <p> The first time of installing/running the application,health facilities are downloaded and saved on the host device (mobile phone or computer browser). This requires internet connectivity. After the download, sites should appear on the facility drop down list.</p>
                 <h3>Data Export</h3>
                <p>Data is saved on your mobile device and should be shared to a server for analysis </p>
                <p>If there is Any un-exported that has  been saved offline, the user will be reminded to create an export by seeing yellow text showing number of sites whose data has not been exported .</p>
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
            <select  name="mflcode" id="mflcode" class="form-control"> 
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


	<!-- script references -->
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
                         if(facilityID!="" && current_date!=""){
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
                      output+="<option value=\""+facilityID+"\">"+facilityName+" - ["+mflcode+"]</option>";
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
                    var date = $("#date").val();
                    var facilityID = $("#facilityname").val();
                    if(date==null){date = "";}
                    if(facilityID==null){facilityID = "";}
//                    alert("facil:"+facilityID+":");
                    if(facilityID!="" && date!=""){
                    
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
                  var id= date+"_"+facilityID+"_"+indicatorsID;
                
                
                
                 
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
                    id= date+"_"+facilityID+"_"+indicatorsID;
                     var has_valid = 0;
                    var others_keyup = " onblur='";
                    var others = "";
                    if(indicatorsID>1 && indicatorsID<6){
                    others_keyup += " totalclients(); ";
                    has_valid++;
                    }
                    if(indicatorsID<3){
                    others_keyup += " missedclients(); ";
                    has_valid++;
                    }
                    
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
                    
                    if(indicatorsID==6 || indicatorsID==7){
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
                         $('.dates').datepicker({
                             todayHighlight: true, clearBtn: true, autoclose: true,format: "yyyy-mm-dd"
                            });
                        load_facilities(); 
                        
                        $("#facilityname").change(function(){
                         var facilityID=$("#facilityname").val();
                         var date = $("#date").val();
                         if(facilityID!="" && date!=""){
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
    var id,reporting_date,year,month,mflcode,indic_value,date,phone;
        
     reporting_date = $("#date").val() ;
     year = $("#year").val() ;
     month = $("#month").val() ;
     mflcode = $("#facilityname").val(); 
     date = reporting_date.replace(/[-]/g,"");
     id = date+"_"+mflcode;
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
     id = date+"_"+mflcode+"_"+indicatorsID;   
     indic_value = $("#"+id).val();
     var timeStamp = new Date().toUTCString();
//          alert("id is  : "+id+" value is : "+indic_value); 
    var _rev = $("#_rev_"+id).val();
if(_rev==""){
     var obj_item ={ 
        _id: id,
        date: reporting_date,
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
   var id,reporting_date,mflcode,date;
     reporting_date = $("#date").val() ;
     mflcode = $("#facilityname").val(); 
     date = reporting_date.replace(/[-]/g,"");
   var delete_id =  date+"_"+mflcode;
   
   //add the record to the deleted log
    db_delete.put({
      _id: delete_id,
      date: reporting_date,
      mflcode: mflcode
    }, function(err, response) {
      if (err) {console.log(err); }
//      console.log(response);
      // handle response
    });

     $.getJSON("json/indicators.json",function(indicators){
    var indic_count = indicators.length;
         
    for( var a=0;a< indic_count; a++){
    var indicatorsID=indicators[a].IndicatorID;  
     id = date+"_"+mflcode+"_"+indicatorsID;
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
            progress(75);
           send_users();
         });  
             console.log(result);
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
        $("#upload_data").show();
     $("#toupload").html("[<font color=\"yellow\">"+records+" Records</font>] Upload Data to Server");   
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
           records_counter();
          }
        }); 
}
  
function progress(per_value){
    if(per_value==0 || per_value==100){
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
var date,reporting_date,mflcode,ind2=0,ind3=0,ind4=0,ind5=0;

    reporting_date = $("#date").val() ;
    mflcode = $("#facilityname").val(); 
    date = reporting_date.replace(/[-]/g,"");
    
    if($("#"+date+"_"+mflcode+"_2").val()!=""){ind2 = $("#"+date+"_"+mflcode+"_2").val();}
    if($("#"+date+"_"+mflcode+"_3").val()!=""){ind3 = $("#"+date+"_"+mflcode+"_3").val();}
    if($("#"+date+"_"+mflcode+"_4").val()!=""){ind4 = $("#"+date+"_"+mflcode+"_4").val();}
    if($("#"+date+"_"+mflcode+"_5").val()!=""){ind5 = $("#"+date+"_"+mflcode+"_5").val();}
   
    var total = parseInt(ind2)+parseInt(ind3)+parseInt(ind4)+parseInt(ind5);
    $("#"+date+"_"+mflcode+"_6").val(total);
     
}
function missedclients(){
var date,reporting_date,mflcode,ind1=0,ind2=0;

    reporting_date = $("#date").val() ;
    mflcode = $("#facilityname").val(); 
    date = reporting_date.replace(/[-]/g,"");
    
    if($("#"+date+"_"+mflcode+"_1").val()!=""){ind1 = $("#"+date+"_"+mflcode+"_1").val();}
    if($("#"+date+"_"+mflcode+"_2").val()!=""){ind2 = $("#"+date+"_"+mflcode+"_2").val();}
   
    var total = parseInt(ind1)-parseInt(ind2);
    $("#"+date+"_"+mflcode+"_7").val(total);
}


function refresh(){
//    location.reload(); 
setTimeout(reloading, 1500);
}

function reloading(){
    location.reload();
}

function checkdata(){
    var indic1=0,indic2=0,indic10=0,indic11=0;
    var date,reporting_date,mflcode;
    var returned=true;
    reporting_date = $("#date").val() ;
    mflcode = $("#facilityname").val(); 
    date = reporting_date.replace(/[-]/g,"");
    
            if($("#"+date+"_"+mflcode+"_1").val()!=""){indic1 = $("#"+date+"_"+mflcode+"_1").val();}
            if($("#"+date+"_"+mflcode+"_2").val()!=""){indic2 = $("#"+date+"_"+mflcode+"_2").val();}
            if($("#"+date+"_"+mflcode+"_10").val()!=""){indic10 = $("#"+date+"_"+mflcode+"_10").val();}
            if($("#"+date+"_"+mflcode+"_11").val()!=""){indic11 = $("#"+date+"_"+mflcode+"_11").val();}
            
           if(indic2>indic1){
               returned = false;
//               error for both
            $("#"+date+"_"+mflcode+"_1").css("border-color", "#e60000");
            $("#"+date+"_"+mflcode+"_2").css("border-color", "#e60000");
            $("#"+date+"_"+mflcode+"_1").css("background-color", "#ff6666");
            $("#"+date+"_"+mflcode+"_2").css("background-color", "#ff6666");
           } 
           else{
           returned = true;   
            $("#"+date+"_"+mflcode+"_1").css("border-color", "#0069cc");
            $("#"+date+"_"+mflcode+"_2").css("border-color", "#0069cc");
            $("#"+date+"_"+mflcode+"_1").css("background-color", "#ffffff");
            $("#"+date+"_"+mflcode+"_2").css("background-color", "#ffffff");
           }
          if(indic11>indic10){
             returned = false;
            $("#"+date+"_"+mflcode+"_10").css("border-color", "#e60000");
            $("#"+date+"_"+mflcode+"_11").css("border-color", "#e60000");
            $("#"+date+"_"+mflcode+"_10").css("background-color", "#ff6666");
            $("#"+date+"_"+mflcode+"_11").css("background-color", "#ff6666");
          }
          else{
              returned = true;
              
            $("#"+date+"_"+mflcode+"_10").css("border-color", "#0069cc");
            $("#"+date+"_"+mflcode+"_11").css("border-color", "#0069cc");
            $("#"+date+"_"+mflcode+"_10").css("background-color", "#ffffff");
            $("#"+date+"_"+mflcode+"_11").css("background-color", "#ffffff");
          }
           
    return returned;
}
function checkif_allexist(){
    var date,reporting_date,mflcode,missing=0;
    var returned=true;
    reporting_date = $("#date").val() ;
    mflcode = $("#facilityname").val(); 
    date = reporting_date.replace(/[-]/g,"");
    for(var i=1;i<=14;i++){
        if($("#"+date+"_"+mflcode+"_"+i).val()=="")
        {
        missing++;
        $("#"+date+"_"+mflcode+"_"+i).css("border-color", "#e60000");
        $("#"+date+"_"+mflcode+"_"+i).css("background-color", "#ff6666");
        }
        else{
         $("#"+date+"_"+mflcode+"_"+i).css("border-color", "#0069cc");
         $("#"+date+"_"+mflcode+"_"+i).css("background-color", "#ffffff");   
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
    var date,reporting_date,mflcode,indic3="",indic11="",indic12="";
    var returned=true;
    reporting_date = $("#date").val() ;
    if(reporting_date.endsWith("-01")){
    mflcode = $("#facilityname").val(); 
    date = reporting_date.replace(/[-]/g,"");
    
    indic3=$("#"+date+"_"+mflcode+"_3").val();
    indic11=$("#"+date+"_"+mflcode+"_11").val();
    indic12=$("#"+date+"_"+mflcode+"_12").val();
    if(indic3==""){indic3=0;}
    if(indic11==""){indic11=0;}
    if(indic12==""){indic12=0;}
    
    if(parseInt(indic11)>parseInt(indic3))
    {
        $("#"+date+"_"+mflcode+"_3").css("border-color", "#e60000");
        $("#"+date+"_"+mflcode+"_3").css("background-color", "#ff6666");
        
        $("#"+date+"_"+mflcode+"_11").css("border-color", "#e60000");
        $("#"+date+"_"+mflcode+"_11").css("background-color", "#ff6666");
                returned = false;
                
          var title = "Error. Incorrect values";
           var text = "Number of clients traced and came back (Code 11) cannot be more than number of clients with unscheduled visits (Code 3) on 1st of any month";
           var icon = "error";
           var button = "Close";
           
           notify(title,text,icon,button);       
    }
    
    if(parseInt(indic12)>parseInt(indic3))
    {
        $("#"+date+"_"+mflcode+"_3").css("border-color", "#e60000");
        $("#"+date+"_"+mflcode+"_3").css("background-color", "#ff6666");
        
        $("#"+date+"_"+mflcode+"_12").css("border-color", "#e60000");
        $("#"+date+"_"+mflcode+"_12").css("background-color", "#ff6666");
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
     var date = reporting_date.replace(/[-]/g,"");
    var id="",output="",_rev="",value="";
    var indic_id=10;
  for(var i=10;i<=14;i++){
      
   id = date+"_"+mflcode+"_"+i;
//   alert("i:"+i);
  
      db.get(id, function(err, doc) {
        if (err) {
            value="0";
        }
       else{  
            _rev = doc._rev;
            value = doc.value; 
       }
       
     id = date+"_"+mflcode+"_"+indic_id;  
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
   var date = reporting_date.replace(/[-]/g,"");
   var date_yester = yesterday.replace(/[-]/g,"");
   var id="",id_yester="",value="",value_yester="";
   for(var i=10;i<=14;i++){
   id = date+"_"+mflcode+"_"+i;
   id_yester = date_yester+"_"+mflcode+"_"+i;
   
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
           var title = "Error. Incorrect Cumulative Values";
           var text = "Values for indicators highlighted in red are cumulative hence yesterday's value should not be more than today's value";
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
      alert("nothing to display");
      $("#user_label").hide();
      $("#adduserbutton").show();
    }
    else{
        
        
      //manage results here
        var num_users = response.total_rows;
         var array_data = response.rows;
         var fullname="",email="",phone="",mflcodes="",mflcode="",output="",output2="";
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

 </script>
	</body>
</html>