<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="REPORTCARD.aspx.cs" Inherits="WebApplication4.REPORTCARD" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>BEC Report Card</title>
    <script src="wwwroot/Reports.js"></script>
    <script src="wwwroot/app.js"></script>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css" />
    <link type="text/css" media="print" rel="stylesheet" href="css/print/baldwin/ProgressReport/BCOEDIIReportPdf.css" />
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Content/bootstrap-theme.css" rel="stylesheet" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/font-awesome.css" rel="stylesheet" />
    <link href="Content/font-awesome.min.css" rel="stylesheet" />
    <script src="Scripts/WebForms/DetailsView.js"></script>
    <script src="Angular/ReportCard.js"></script>
    <script src="BCOEDIIReport.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <section class="content">
    <form1 id="form2" class="form-horizontal ng-pristine ng-valid" name="myForm" role="form" novalidate>
        <div data-ng-init="BindData()">
            <div class="box box-primary">
                <div class="box-header with-border">
                    <center><asp:ImageButton ID="ImageButton1" src="images/LOGO.jpeg" CssClass="img-thumbnail" style="width:10%;height:10%"  runat="server" /></center>
                    <center><figcaption></figcaption><strong style="font-size:xx-large;font-family:'Times New Roman';font-weight:bolder">Baldwin International School</strong></center>
                    <center><figcaption></figcaption><strong style="font-size:xx-large;font-family:'Times New Roman';font-weight:bolder">Richmond Town Bangalore</strong></center>
                    <h3 class="text-center w3-animate-fading w3-animate-right" style="background-color:royalblue;font-size:xx-large;font-family:'Times New Roman';font-weight:bolder;color:white;border:solid thick"><strong><u style="text-underline-position:below">Academic Progress Card Report</u></strong></h3>
                    <div class="box-tools pull-right">
                        <button type="button" class="btn btn-toolbar" data-widgit="collapse" onclick="collapse()"><span class="fa fa-minus"></span></button>
                        <script type="text/javascript">

                        </script>
                    </div>
                </div>
                <div class="box-body">
                    <div class="row">
                        <div class="col-lg-12">
 
                        <div class="col-lg-6">
                            <div class="form-group">
                                <label class="control-label col-md-4">Academic-Year:</label>
                                    <asp:DropDownList ID="DropDownList1" style="margin-top:6px;margin-left:-9px" runat="server">
                                        <asp:ListItem>---Select Academic Year---</asp:ListItem>
                                        <asp:ListItem>July-2021-2022</asp:ListItem>
                                        <asp:ListItem>July-2022-2023</asp:ListItem>
                                        <asp:ListItem>July-2023-2024</asp:ListItem>
                                        <asp:ListItem>July-2024-2025</asp:ListItem>
                                        <asp:ListItem>July-2025-2026</asp:ListItem>
                                    </asp:DropDownList>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="form-group">
                                <label class="control-label col-md-4">Class:</label>
                                   <asp:DropDownList ID="DropDownList2"  style="margin-top:6px;margin-left:-9px" runat="server">
                                       <asp:ListItem>---Select Class---</asp:ListItem>
                                       <asp:ListItem>1st  Grade</asp:ListItem>
                                       <asp:ListItem>2nd  Grade</asp:ListItem>
                                       <asp:ListItem>3rd  Grade</asp:ListItem>
                                       <asp:ListItem>4th  Grade</asp:ListItem>
                                       <asp:ListItem>5th  Grade</asp:ListItem>
                                       <asp:ListItem>6th  Grade</asp:ListItem>
                                       <asp:ListItem>7th  Grade</asp:ListItem>
                                       <asp:ListItem>8th  Grade</asp:ListItem>
                                       <asp:ListItem>9th  Grade</asp:ListItem>
                                       <asp:ListItem>10th Grade</asp:ListItem>
                                       <asp:ListItem>11th Grade</asp:ListItem>
                                       <asp:ListItem>12th Grade</asp:ListItem>
                                   </asp:DropDownList>   
                            </div>
                        </div>
                          </div>
                          <div class="col-lg-12">
                        <div class="col-lg-6">
                            <div class="form-group">
                                <label class="control-label col-md-4">Section:</label>
                                    <asp:DropDownList ID="DropDownList3"  style="margin-top:6px;margin-left:-9px" runat="server">
                                        <asp:ListItem>--Select Section--</asp:ListItem>
                                        <asp:ListItem>A</asp:ListItem>
                                        <asp:ListItem>B</asp:ListItem>
                                        <asp:ListItem>C</asp:ListItem>
                                        <asp:ListItem>D</asp:ListItem>
                                        <asp:ListItem>E</asp:ListItem>
                                        <asp:ListItem>F</asp:ListItem>
                                    </asp:DropDownList>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="form-group">
                                <label class="control-label col-md-4">Exam Name:</label>
                                    <asp:DropDownList ID="DropDownList4" style="margin-top:6px;margin-left:-9px" runat="server">
                                        <asp:ListItem>---SELECT EXAM NAME---</asp:ListItem>
                                        <asp:ListItem>ASSESMENT 1</asp:ListItem>
                                        <asp:ListItem>ASSESMENT 2</asp:ListItem>
                                        <asp:ListItem>ASSESMENT 3</asp:ListItem>
                                        <asp:ListItem>ASSESMENT 4</asp:ListItem>
                                        <asp:ListItem>PREPARATORY EXAM</asp:ListItem>
                                        <asp:ListItem>FINAL EXAM</asp:ListItem>
                                    </asp:DropDownList>
                            </div>
                         </div>
                     </div>
                        <div class="col-sm-6">
                            <div class="">
                                <center style="margin-left:70%">
                                  <asp:CheckBox ID="CheckBox1" runat="server"></asp:CheckBox> Don't Show Percentage
                                    <span class="lbl padding-8"></span><span style="color:lightgreen;font-size:20px;"></span>
                                </center>
                            </div>
                        </div>
                      </div>
                    </div>
                    <hr class="line" style="border:2px solid #000000"/>
                    <div class="">
                        <div class="">
                            <div class="text-center">
                               <asp:Button ID="Btn_save" CssClass="btn btn-raised btn-info" runat="server" Text="REPORTS" OnClick="Btn_save_Click" ></asp:Button>
                                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                                <button type="button" class="btn btn-raised btn-danger" onclick="window.close()">
                                    <i class="fa fa-times" aria-hidden="true"></i>
                                    Cancel</button>
                                <button type="button" class="btn btn-raised btn-info" onclick="window.print()">
                                    <i class="fa fa-file-pdf-o" aria-hidden="true"></i>
                                    Print
                                </button>
                            </div>
                        </div>
                    </div>
            </div>
       </div>
    </form1>
    <div class="box box-primary">
        <div class="box-header with-border">
            <h3 class="text-center w3-animate-fading w3-animate-right" style="background-color:royalblue;font-size:xx-large;font-family:'Times New Roman';font-weight:bolder;color:white;border:solid thick"><strong><u style="text-underline-position:below">Progress Card Report</u></strong></h3>
            <div class="box-tools pull-right">
                <button type="button" class="btn btn-box-tool" data-widget="collapse" style="display:none"><i class="fa fa-minus"></i></button>
            </div>
        </div>
        <div class="box-body" style="display:block">
            <div class="REPORT" id="Baldwin">
                <div class="margin-top-55" data-table="report in report_list" style="page-break-before:always;">
                    <div id="header" class="header text-center">
                          <div id="id01">
                            <h3>
                                PROGRESS REPORT<br />
                            ACADEMIC YEAR {{Year}} {{EXAMNAME}}
                            </h3>
                             <script>
                                var myObject= {"Year" : "2020-2021", "EXAMNAME" : "ASSESSMENT1"};
                                w3.displayObject("id01", myObject);
                            </script>
                        </div>
                    </div>
                    <section class="content" aria-autocomplete="inline">
                        <div class="section">
                            <div class="row margin-bottom-10">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label class="control-label" style="font-size:larger;font-family:'Times New Roman';font-weight:bolder"><strong>NAME</strong></label>
                                        <label class="control-label" style="font-size:larger;font-family:'Times New Roman';font-weight:bolder">
                                            <strong style="margin-top:-2%">: {{StudentListE1.stname}}</strong>
                                        </label>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label" style="font-size:larger;font-family:'Times New Roman';font-weight:bolder"><strong>CLASS-TEACHER</strong></label>
                                        <label class="control-label" style="font-size:larger;font-family:'Times New Roman';font-weight:bolder">
                                            <strong style="margin-top:-2%">: {{clastechname}}</strong>
                                        </label>
                                    </div>
                                </div>
                                <div class="col-md-6" style="margin-left:-8%">
                                    <div class="form-group">
                                        <label class="control-label" style="font-size:larger;font-family:'Times New Roman';font-weight:bolder"><strong>CLASS</strong></label>
                                        <label class="control-label" style="font-size:larger;font-family:'Times New Roman';font-weight:bolder">
                                            <strong style="margin-top:-2%">: {{report.asmcL_ClassName}}</strong>
                                        </label>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label" style="font-size:larger;font-family:'Times New Roman';font-weight:bolder"><strong>ROLL-NO</strong></label>
                                        <label class="control-label" style="font-size:larger;font-family:'Times New Roman';font-weight:bolder">
                                            <strong style="margin-top:-2%">: {{report.amaY_RollNo}}</strong>
                                        </label>
                                    </div>
                                </div>
                                <div class="col-md-6" style="margin-left:76%;margin-top:-6%">
                                    <div class="form-group">
                                        <label class="control-label" style="font-size:larger;font-family:'Times New Roman';font-weight:bolder"><strong>SECTION</strong></label>
                                        <label class="control-label" style="font-size:larger;font-family:'Times New Roman';font-weight:bolder">
                                            <strong style="margin-top:-2%">: {{report.asmC_SectionName}}</strong>
                                        </label>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label" style="font-size:larger;font-family:'Times New Roman';font-weight:bolder"><strong>ADM.NO</strong></label>
                                        <label class="control-label" style="font-size:larger;font-family:'Times New Roman';font-weight:bolder">
                                            <strong style="margin-top:-2%">: {{report.amsT_AdmNo}}</strong>
                                        </label>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="section">
                            <table class="table table-bordered table-responsive table-hover table-condensed w3-table text-center">
                                <thead>
                                    <tr>
                                        <th class="text-center" rowspan="2" style="width:300%;font-size:x-large;font-family:'Times New Roman';font-weight:bolder"><strong>SLNO:</strong></th>
                                        <th class="text-center" rowspan="2" style="width:300%;font-size:x-large;font-family:'Times New Roman';font-weight:bolder"><strong>SUBJECTS:</strong></th>
                                        <th class="text-center" rowspan="2" style="width:300%;font-size:x-large;font-family:'Times New Roman';font-weight:bolder"><strong>TOTAL:</strong></th>
                                        <th class="text-center" rowspan="2" style="width:300%;font-size:x-large;font-family:'Times New Roman';font-weight:bolder"><strong>PERCENTAGE(%):</strong></th>
                                        <th class="text-center" rowspan="2" style="width:300%;font-size:x-large;font-family:'Times New Roman';font-weight:bolder"><strong>GRADE:</strong></th>
                                    </tr>
                                    <tr>
                                        <th class="text-center"style="font-size:x-large;font-family:'Times New Roman';font-weight:bolder"><strong>REMARKS:</strong></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr class="subj in exm_sublist">
                                        <td class="text-left"  style="font-size:14px !important">
                                            {{subj.ismS_SLNO}}
                                        </td>
                                        <td  class="text-left"  style="font-size:16px !important">
                                            {{subj.ismS_SubjectName}}
                                        </td>
                                        <td  class="text-left"  style="font-size:16px !important">
                                            {{{pro.estmP_TotalMaxMarks}}
                                        </td>
                                        <td  class="text-left"  style="font-size:16px !important">
                                            <span  style="font-size:larger !important">{{stu_subj.estmpS_ObtainedMarks}}}</span>
                                            <span  style="font-size:larger !important">AB</span>
                                        </td>
                                        <td  class="text-left"  style="font-size:16px !important">
                                            <span style="font-size:larger !important">{{stu_subj.estmpS_ObtainedGrade}}</span>
                                            <span style="font-size:larger !important"></span>
                                        </td>
                                        <td style="font-size:larger !important">
                                            <label ng-repeat="grd_remas in subj_grade_remarks" ng-if="grd_remas.emgR_Id==subj.emgR_Id && grd_remas.emgD_Name==stu_subj.estmpS_ObtainedGrade"><span ng-if="stu_subj.estmpS_PassFailFlg != 'AB'">{{grd_remas.emgD_Remarks}}</span><span ng-if="stu_subj.estmpS_PassFailFlg == 'AB'"></span></label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="text-left" style="font-size:14px !important">GRAND TOTAL</td>
                                        <td  class="text-left"  style="font-size:16px !important"><div><label  style="font-size:16px !important">
                                            <strong>{{pro.estmP_TotalMaxMarks}}</strong></label></div></td>
                                        <td  class="text-left"  style="font-size:16px !important"><strong>{{stu_grandmin_marks}}</strong></td>
                                        <!--<td >{{report.estmP_TotalObtMarks}}</td>-->
                                        <td><label class="control-label"><b>{{pro.estmP_TotalObtMarks}}</b></label></td>
                                        <td></td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td class="text-left" style="font-size:14px !important">TOTAL PERCENTAGE</td>
                                        <td colspan="5">
                                            <div  class="text-left"  style="font-size:16px !important">
                                                <label  class="text-left"  style="font-size:16px !important"><strong>{{pro.estmP_Percentage}}</strong></label>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="text-left"  style="font-size:14px !important">RANK IN SECTION</td>
                                        <td colspan="5">
                                            <div class="pro in processtot">
                                            <label id="report.student_id==pro.amsT_Id">
                                                <strong>
                                                    <span id="pro.estmP_SectionRank != '0'"  style="font-size:16px !important">{{pro.estmP_SectionRank}}</span>
                                                        <span id="pro.estmP_SectionRank == '0'"></span>
                                                        </strong>
                                                </label>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr ng-repeat="subj in exm_sublist">
                                        <td class="text-left" ng-repeat="stu_subj in report.sub_list" ng-if="stu_subj.ismS_Id==subj.ismS_Id && !subj.eyceS_AplResultFlg" style="font-size:14px !important">
                                            {{subj.ismS_SubjectName}}
                                        </td>
                                        <td ng-repeat="stu_subj in report.sub_list" ng-if="stu_subj.ismS_Id==subj.ismS_Id && !subj.eyceS_AplResultFlg"></td>
                                        <td ng-repeat="stu_subj in report.sub_list" ng-if="stu_subj.ismS_Id==subj.ismS_Id && !subj.eyceS_AplResultFlg"></td>
                                        <td ng-repeat="stu_subj in report.sub_list" ng-if="stu_subj.ismS_Id==subj.ismS_Id && !subj.eyceS_AplResultFlg"></td>
                                        <td ng-repeat="stu_subj in report.sub_list" ng-if="stu_subj.ismS_Id==subj.ismS_Id && !subj.eyceS_AplResultFlg">
                                            <span ng-if="stu_subj.estmpS_PassFailFlg != 'AB' && stu_subj.EYCES_GradeDisplayFlg"  style="font-size:16px !important">{{stu_subj.estmpS_ObtainedGrade}}</span>
                                            <span ng-if="stu_subj.estmpS_PassFailFlg == 'AB' && stu_subj.EYCES_GradeDisplayFlg"  style="font-size:16px !important">{{stu_subj.estmpS_PassFailFlg}}</span>
                                        </td>
                                        <td ng-repeat="stu_subj in report.sub_list" ng-if="stu_subj.ismS_Id==subj.ismS_Id && !subj.eyceS_AplResultFlg">
                                        <label ng-repeat="grd_remas in subj_grade_remarks" ng-if="grd_remas.emgR_Id==subj.emgR_Id && grd_remas.emgD_Name==stu_subj.estmpS_ObtainedGrade"  style="font-size:16px !important">
                                            <span ng-if="stu_subj.estmpS_PassFailFlg != 'AB'">{{grd_remas.emgD_Remarks}}</span>
                                            <span ng-if="stu_subj.estmpS_PassFailFlg == 'AB'"></span></label>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <table id="table" class="table table-bordered table-responsive table-hover table-condensed">
                            <thead>
                                <tr>
                                    <th colspan="14" class="text-center"  style="border-top:0px !important;font-size:x-large;font-family:'Times New Roman';font-weight:bolder">ASSESMENT DESCRIPTION</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td rowspan="1" class="text-center" style="font-size:x-large;font-family:'Times New Roman';font-weight:bolder">GRADE BOUNDRY</td>
                                    <td rowspan="1" class="text-center" style="font-size:x-large;font-family:'Times New Roman';font-weight:bolder">GRADE</td>
                                    <td rowspan="1" class="text-center" style="font-size:x-large;font-family:'Times New Roman';font-weight:bolder">Descriptor</td>
                                </tr>
                                <tr>
                                  <td rowspan="1" class="text-center" style="font-size:x-large;font-family:'Times New Roman';font-weight:bolder">90-100</td>
                                   <td rowspan="1" class="text-center" style="font-size:x-large;font-family:'Times New Roman';font-weight:bolder">A*</td>
                                     <td rowspan="1" class="text-center" style="font-size:x-large;font-family:'Times New Roman';font-weight:bolder">Consistancy and Heigh Quality Work.Always Communicates the Understanding of  Concepts and Context's  and uses the Skills with  Advanced Critical Thinking.</td>
                                </tr>
                                <tr>
                                    <td rowspan="1" class="text-center" style="font-size:x-large;font-family:'Times New Roman';font-weight:bolder">80-89</td>
                                        <td rowspan="1" class="text-center" style="font-size:x-large;font-family:'Times New Roman';font-weight:bolder">A</td>
                                            <td rowspan="1" class="text-center" style="font-size:x-large;font-family:'Times New Roman';font-weight:bolder">Consistancy and Heigh Quality Work.Always Communicates the Understanding of  Concepts and Context's and uses the Skills with a Critical Thinking.</td>
                                </tr>
                                <tr>
                                   <td rowspan="1" class="text-center" style="font-size:x-large;font-family:'Times New Roman';font-weight:bolder">70-79</td>
                                        <td rowspan="1" class="text-center" style="font-size:x-large;font-family:'Times New Roman';font-weight:bolder">B</td>
                                            <td rowspan="1" class="text-center" style="font-size:x-large;font-family:'Times New Roman';font-weight:bolder">Consistancy and Heigh Quality Work.Occasionally Communicates the Understanding of  Concepts and Context's and uses the Skills with a Critical Thinking and Support.</td>
                                </tr>
                                <tr>
                                  <td rowspan="1" class="text-center" style="font-size:x-large;font-family:'Times New Roman';font-weight:bolder">60-69</td>
                                        <td rowspan="1" class="text-center" style="font-size:x-large;font-family:'Times New Roman';font-weight:bolder">C</td>
                                            <td rowspan="1" class="text-center" style="font-size:x-large;font-family:'Times New Roman';font-weight:bolder">Consistancy and Heigh Quality Work.Occasionally Communicates the Understanding of  Concepts and Context's and uses the Skills with a Critical Thinking and Support.</td>
                                </tr>
                                <tr>
                                  <td rowspan="1" class="text-center" style="font-size:x-large;font-family:'Times New Roman';font-weight:bolder">60-69</td>
                                        <td rowspan="1" class="text-center" style="font-size:x-large;font-family:'Times New Roman';font-weight:bolder">C</td>
                                            <td rowspan="1" class="text-center" style="font-size:x-large;font-family:'Times New Roman';font-weight:bolder">Good Quality Work.Occasionally Communicates the Understanding of  Concepts and Context's and uses the Skills with a Flexible  Critical Thinking and Support.</td>
                                </tr>
                                <tr>
                                    <td rowspan="1" class="text-center" style="font-size:x-large;font-family:'Times New Roman';font-weight:bolder">50-59</td>
                                        <td rowspan="1" class="text-center" style="font-size:x-large;font-family:'Times New Roman';font-weight:bolder">D</td>
                                            <td rowspan="1" class="text-center" style="font-size:x-large;font-family:'Times New Roman';font-weight:bolder">Satisfactory Quality Work.Occasionally Communicates the Understanding of  Concepts and Context's and uses the Skills with a Critical Thinking and Support.</td>
                                </tr>
                                <tr>
                                    <td rowspan="1" class="text-center" style="font-size:x-large;font-family:'Times New Roman';font-weight:bolder">40-49</td>
                                        <td rowspan="1" class="text-center" style="font-size:x-large;font-family:'Times New Roman';font-weight:bolder">E</td>
                                            <td rowspan="1" class="text-center" style="font-size:x-large;font-family:'Times New Roman';font-weight:bolder">Limited Quality Work.Occasionally Communicates the Understanding of  Concepts and Context's and uses the Skills with a Critical Thinking and Support.</td>
                                </tr>
                                <tr>
                                   <td rowspan="1" class="text-center" style="font-size:x-large;font-family:'Times New Roman';font-weight:bolder">30-39</td>
                                        <td rowspan="1" class="text-center" style="font-size:x-large;font-family:'Times New Roman';font-weight:bolder">F</td>
                                            <td rowspan="1" class="text-center" style="font-size:x-large;font-family:'Times New Roman';font-weight:bolder">Limited Quality Work.Occasionally Communicates the Understanding of  Concepts and Context's and uses the Skills with a Critical Thinking and Support But Unsatisfactorly.</td>
                                </tr>
                                <tr>
                                   
                                   <td rowspan="1" class="text-center" style="font-size:x-large;font-family:'Times New Roman';font-weight:bolder">20-29</td>
                                        <td rowspan="1" class="text-center" style="font-size:x-large;font-family:'Times New Roman';font-weight:bolder">G</td>
                                            <td rowspan="1" class="text-center" style="font-size:x-large;font-family:'Times New Roman';font-weight:bolder">Limited Quality Work.Occasionally Communicates the Understanding of  Concepts and Context's and uses the Skills with a Critical Thinking and Support But Unsatisfactorly.</td>
                                </tr>
                            </tbody>
                        </table>
                        <table id="table1" class="table table-bordered table-responsive table-hover table-condensed list-group list-inline" style="background-color:white">
                            <thead>
                                <tr>
                                    <th colspan="32" class="text-center" style="border-top:0px !important;"><b>ATTENDANCE</b></th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td class="text-center" colspan="2"><b>MONTH</b></td>
                                    <td class="text-center"  colspan="2"><b>JUN</b></td>
                                    <td class="text-center"  colspan="2"><b>JUL</b></td>
                                    <td class="text-center"  colspan="2"><b>AUG</b></td>
                                    <td class="text-center"  colspan="2"><b>SEP</b></td>
                                    <td class="text-center"  colspan="2"><b>OCT</b></td>
                                    <td class="text-center"  colspan="2"><b>NOV</b></td>
                                    <td class="text-center"  colspan="2"><b>DEC</b></td>
                                    <td class="text-center"  colspan="2"><b>JAN</b></td>
                                    <td class="text-center"  colspan="2"><b>FEB</b></td>
                                    <td class="text-center"  colspan="2"><b>MAR</b></td>
                                    <td class="text-center"  colspan="2"><b>APR</b></td>
                                    <td class="text-center"  colspan="2"><b>MAY</b></td>
                                    <td class="text-center"  colspan="2"><b>TOTAL</b></td>
                                    <td class="text-center"  colspan="2"><b>TOTAL%</b></td>
                                </tr>
                                <tr>
                                    <td colspan="2"><b>WORKING DAYS</b></td>
                                    <td  colspan="2" style="font-size:14px  !important">{{att.June}}</td>
                                    <td  colspan="2"   style="font-size:14px !important">{{att.July}}</td>
                                    <td  colspan="2"   style="font-size:13px !important">{{att.August}}</td>
                                    <td  colspan="2"   style="font-size:13px !important">{{att.September}}</td>
                                    <td  colspan="2"   style="font-size:13px !important">{{att.October}}</td>
                                    <td  colspan="2"   style="font-size:13px !important">{{att.November}}</td>
                                    <td  colspan="2"   style="font-size:13px !important">{{att.December}}</td>
                                    <td  colspan="2"   style="font-size:13px !important">{{att.January}}</td>
                                    <td colspan="2"    style="font-size:13px !important">{{att.Febrauary}}</td>
                                    <td colspan="2"    style="font-size:13px !important">{{att.March}}</td>
                                    <td colspan="2"    style="font-size:13px !important">{{att.April}}</td>
                                    <td colspan="2"    style="font-size:13px !important">{{att.May}}</td>
                                    <td colspan="2"    style="font-size:13px !important"><b>{{att.TotalSchoolDays}}</b></td>
                                    <td colspan="2"    style="font-size:13px !important"><b>{{att.Total_Percentage}}</b></td>
                                </tr>
                                <tr>
                                    <td colspan="2"><b>PRESENT DAYS</b></td>
                                    <td  colspan="2"  style="font-size:12px !important">{{att.June}}</td>
                                    <td  colspan="2"  style="font-size:12px !important">{{att.July}}</td>
                                    <td  colspan="2"  style="font-size:12px !important">{{att.August}}</td>
                                    <td  colspan="2"  style="font-size:12px !important">{{att.September}}</td>
                                    <td  colspan="2"  style="font-size:12px !important">{{att.October}}</td>
                                    <td  colspan="2"  style="font-size:12px !important">{{att.November}}</td>
                                    <td colspan="2"   style="font-size:12px !important">{{att.December}}</td>
                                    <td colspan="2"   style="font-size:12px !important">{{att.January}}</td>
                                    <td colspan="2"   style="font-size:12px !important">{{att.Febrauary}}</td>
                                    <td colspan="2"   style="font-size:12px !important">{{att.March}}</td>
                                    <td colspan="2"   style="font-size:12px !important">{{att.April}}</td>
                                    <td colspan="2"   style="font-size:12px !important">{{att.May}}</td>
                                    <td colspan="2"   style="font-size:12px !important"><b>{{att.TotalPresentDays}}</b></td>
                                    <td colspan="2"   style="font-size:12px !important"><b>{{att.Total_Percentage}}</b></td>

                                </tr>
                            </tbody>
                        </table>
                        <table class="table">
                            <tbody>
                                <tr class="list-group list-inline">
                                    <td class="text-left">
                                        <span class="border-top">
                                            <b>CLASS TEACHER'S SIGNATURE</b>
                                        </span>
                                    </td>
                                    <td class="pull-right">
                                        <span class="border-top">
                                            <b>PRINCIPAL'S SIGNATURE</b>
                                        </span>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </section>
                </div>
            </div>
        </div>
    </div>
</section>
    </form>
</body>
</html>
