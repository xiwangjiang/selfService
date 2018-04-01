<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <link rel="icon" type="image/png" href="/eShenChe/picture/favicon.ico">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <title>欢迎使用e审车平台</title>

    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
    <meta name="viewport" content="width=device-width" />

    <!-- Canonical SEO -->
    <link rel="canonical" href="https://www.creative-tim.com/product/light-bootstrap-dashboard-pro"/>

    <!--  Social tags      -->
    <meta name="keywords" content="creative tim, html dashboard, html css dashboard, web dashboard, bootstrap dashboard, bootstrap, css3 dashboard, bootstrap admin, light bootstrap dashboard, frontend, responsive bootstrap dashboard">

    <meta name="description" content="Forget about boring dashboards, get an admin template designed to be simple and beautiful.">

    <!-- Schema.org markup for Google+ -->
    <meta itemprop="name" content="Light Bootstrap Dashboard PRO by Creative Tim">
    <meta itemprop="description" content="Forget about boring dashboards, get an admin template designed to be simple and beautiful.">

    <meta itemprop="image" content="http://s3.amazonaws.com/creativetim_bucket/products/34/original/opt_lbd_pro_thumbnail.jpg">
    <!-- Twitter Card data -->

    <meta name="twitter:card" content="product">
    <meta name="twitter:site" content="@creativetim">
    <meta name="twitter:title" content="Light Bootstrap Dashboard PRO by Creative Tim">

    <meta name="twitter:description" content="Forget about boring dashboards, get an admin template designed to be simple and beautiful.">
    <meta name="twitter:creator" content="@creativetim">
    <meta name="twitter:image" content="http://s3.amazonaws.com/creativetim_bucket/products/34/original/opt_lbd_pro_thumbnail.jpg">
    <meta name="twitter:data1" content="Light Bootstrap Dashboard PRO by Creative Tim">
    <meta name="twitter:label1" content="Product Type">
    <meta name="twitter:data2" content="$29">
    <meta name="twitter:label2" content="Price">
    <!-- Open Graph data -->
    <meta property="og:title" content="Light Bootstrap Dashboard PRO by Creative Tim" />
    <meta property="og:type" content="article" />
    <meta property="og:url" content="http://demos.creative-tim.com/light-bootstrap-dashboard-pro/examples/dashboard.html" />
    <meta property="og:image" content="http://s3.amazonaws.com/creativetim_bucket/products/34/original/opt_lbd_pro_thumbnail.jpg"/>
    <meta property="og:description" content="Forget about boring dashboards, get an admin template designed to be simple and beautiful." />
    <meta property="og:site_name" content="Creative Tim" />


    <!-- Bootstrap core CSS     -->
    <link href="/eShenChe/css/bootstrap.min.css" rel="stylesheet" />

    <!--  Light Bootstrap Dashboard core CSS    -->
    <link href="/eShenChe/css/light-bootstrap-dashboard.css" rel="stylesheet"/>

    <!--  CSS for Demo Purpose, don't include it in your project     -->
    <link href="/eShenChe/css/demo.css" rel="stylesheet" />


    <!--     Fonts and icons     -->
    <link href="/eShenChe/css/font-awesome.min.css" rel="stylesheet">
    <link href='/eShenChe/css/685fd913f1e14aebad0cc9d3713ee469.css' rel='stylesheet' type='text/css'>
    <link href="/eShenChe/css/pe-icon-7-stroke.css" rel="stylesheet" />
</head>

<body>

    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">
                <div class="card center" style="height:700px">
                    <div class="header text-center">
                        <legend>e审车账号注册</legend>
                    </div>
                    <div class="content">
                        <form method="get" action="/eShenChe/register" accept-charset="UTF-8" onsubmit="document.charset='UTF-8'" class="form-horizontal">

                            <fieldset>
                                <div class="form-group text-center">
                                    <label class="col-md-4 control-label">账号类型</label>
                                    <div class="col-md-1">
                            			<input type="radio" name="userType" value="customer">&nbsp;普通用户
                             	</div>
                             	<div class="col-md-1">
                             		<input type="radio" name="userType" value="driver">&nbsp;司机
                             	</div>
                             	<div class="col-md-1">
                             		<input type="radio" name="userType" value="agent" checked>&nbsp;代理商
                             	</div>
                             	<div class="col-md-1">
                             		<input type="radio" name="userType" value="check">&nbsp;检测线
                             	</div>
                                </div>
                                
                                <div class="form-group">
                                    <label class="col-sm-4 control-label">用户名</label>
                                    <div class="col-sm-4">
                                        <input type="text" class="form-control" id="userName" name="userName" maxlength="16">
                                    </div>
                                </div>
                                
                                <div class="form-group">
                                    <label class="col-sm-4 control-label">密码</label>
                                    <div class="col-sm-4">
                                        <input type="password" class="form-control" id="password" name="password" maxlength="16">
                                    </div>
                                </div>
                                
                                <div class="form-group">
                                    <label class="col-sm-4 control-label">手机号</label>
                                    <div class="col-sm-4">
                                        <input type="number" class="form-control" id="phone" name="phone" oninput="if(value.length>11)value=value.slice(0,11)">
                                    </div>
                                </div>

                            </fieldset>
                            <div class="footer text-center">
	                            <input type="checkbox" id="protocol" />&nbsp;<a href="#" onclick="showProtocol()">我已经阅读了用户协议</a>
	                            	<br>
	                             <a href="/eShenChe/pages/login.jsp" class="btn btn-info btn-fill">返回登录</a>
	                             <input id="submit" type="submit" class="btn btn-danger btn-fill" value="注册并登录" disabled />
                            </div>
                            <div class="text-center">
	                            <span style="color: #FF0000">${errorInfo}</span><br>
                            </div>
                            
                        </form>
                    </div>
                </div> <!-- end card -->

            </div> <!-- end col-md-12 -->
        </div> <!-- end row -->
    </div>
            
	<!--新增窗口-->
	<div id="addModal" class="bootbox modal fade" tabindex="-1" role="dialog">
	    <div class="modal-dialog ">
	        <div class="modal-content">
	            <div class="modal-header">
	                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
	                <h4 class="modal-title" id="myModalLabel">用户协议</h4>
	            </div>
	            <div class="modal-body">
		            <p>
						            用户协议
						特别提示
						北京陌陌科技有限公司（以下简称“陌陌科技”）在此特别提醒您（用户）在注册成为用户之前，请认真阅读本《用户协议》（以下简称“协议”），确保您充分理解本协议中各条款。请您审慎阅读并选择接受或不接受本协议。除非您接受本协议所有条款，否则您无权注册、登录或使用本协议所涉服务。您的注册、登录、使用等行为将视为对本协议的接受，并同意接受本协议各项条款的约束。
						
						本协议约定陌陌科技与用户之间关于“陌陌”软件服务（以下简称“服务”）的权利义务。“用户”是指注册、登录、使用本服务的个人。本协议可由陌陌科技随时更新，更新后的协议条款一旦公布即代替原来的协议条款，恕不再另行通知，用户可在本网站查阅最新版协议条款。在陌陌科技修改协议条款后，如果用户不接受修改后的条款，请立即停止使用陌陌科技提供的服务，用户继续使用陌陌科技提供的服务将被视为接受修改后的协议。
						
						一、帐号注册
						1、用户在使用本服务前需要注册一个“陌陌”帐号。“陌陌”帐号应当使用手机号码绑定注册，请用户使用尚未与“陌陌”帐号绑定的手机号码，以及未被陌陌科技根据本协议封禁的手机号码注册“陌陌”帐号。陌陌科技可以根据用户需求或产品需要对帐号注册和绑定的方式进行变更，而无须事先通知用户。
						
						2、“陌陌”系基于地理位置的移动社交产品，用户注册时应当授权陌陌科技公开及使用其地理位置信息方可成功注册“陌陌”帐号。故用户完成注册即表明用户同意陌陌科技提取、公开及使用用户的地理位置信息。如用户需要终止向其他用户公开其地理位置信息，可自行设置为隐身状态。
						
						3、鉴于“陌陌”帐号的绑定注册方式，您同意陌陌科技在注册时将使用您提供的手机号码及/或自动提取您的手机号码及自动提取您的手机设备识别码等信息用于注册。
						
						4、在用户注册及使用本服务时，陌陌科技需要搜集能识别用户身份的个人信息以便陌陌科技可以在必要时联系用户，或为用户提供更好的使用体验。陌陌科技搜集的信息包括但不限于用户的姓名、性别、年龄、出生日期、身份证号、地址、学校情况、公司情况、所属行业、兴趣爱好、常出没的地方、个人说明；陌陌科技同意对这些信息的使用将受限于第三条用户个人隐私信息保护的约束。        
		            </p>
	
	            </div>
	            <div class="modal-footer">
	            
	                <button onclick="acceptProtocol()" type="button" class="btn btn-success radius">
	                    <span><i class="icon-ok"></i></span>我同意并接受以上协议
	                </button>
	                
	                <button data-bb-handler="cancel" type="button" onclick="cancelProtocol()" class="btn btn-danger radius">取消</button>
	            </div>
	            
	        </div>
	    </div>
   </div>

</body>

<!--   Core JS Files and PerfectScrollbar library inside jquery.ui   -->
<script src="/eShenChe/js/jquery.min.js" type="text/javascript"></script>
<script src="/eShenChe/js/jquery-ui.min.js" type="text/javascript"></script>
<script src="/eShenChe/js/bootstrap.min.js" type="text/javascript"></script>
<link rel="stylesheet" href="/eShenChe/css/paging.css">

<!--  Forms Validations Plugin -->
<script src="/eShenChe/js/jquery.validate.min.js"></script>

<!--  Plugin for Date Time Picker and Full Calendar Plugin-->
<script src="/eShenChe/js/moment.min.js"></script>

<!--  Date Time Picker Plugin is included in this js file -->
<script src="/eShenChe/js/bootstrap-datetimepicker.js"></script>

<!--  Select Picker Plugin -->
<script src="/eShenChe/js/bootstrap-selectpicker.js"></script>

<!--  Checkbox, Radio, Switch and Tags Input Plugins -->
<script src="/eShenChe/js/bootstrap-checkbox-radio-switch-tags.js"></script>

<!--  Charts Plugin -->
<script src="/eShenChe/js/chartist.min.js"></script>

<!--  Notifications Plugin    -->
<script src="/eShenChe/js/bootstrap-notify.js"></script>

<!-- Sweet Alert 2 plugin -->
<script src="/eShenChe/js/sweetalert2.js"></script>

<!-- Vector Map plugin -->
<script src="/eShenChe/js/jquery-jvectormap.js"></script>

<!--  Google Maps Plugin    -->
<script src="/eShenChe/js/aa743e8f448a4792bad10d201a7080f6.js"></script>

<!-- Wizard Plugin    -->
<script src="/eShenChe/js/jquery.bootstrap.wizard.min.js"></script>

<!--  Bootstrap Table Plugin    -->
<script src="/eShenChe/js/bootstrap-table.js"></script>

<!--  Plugin for DataTables.net  -->
<script src="/eShenChe/js/jquery.datatables.js"></script>

<!--  Full Calendar Plugin    -->
<script src="/eShenChe/js/fullcalendar.min.js"></script>

<!-- Light Bootstrap Dashboard Core javascript and methods -->
<script src="/eShenChe/js/light-bootstrap-dashboard.js"></script>

<!--   Sharrre Library    -->
<script src="/eShenChe/js/jquery.sharrre.js"></script>

<!-- Light Bootstrap Dashboard DEMO methods, don't include it in your project! -->
<script src="/eShenChe/js/demo.js"></script>
<script src="/eShenChe/js/pagesJsp.js"></script>
<script src="/eShenChe/js/paging.js"></script>


<script type="text/javascript">
   
	//验证注册用户是否接收协议内容
	$("#protocol").change(function (){
		if($("#protocol").is(":checked")){
			$("#submit").attr("disabled",false);
	
		}else{
			$("#submit").attr("disabled",true);
		}
	});
   
   	//显示用户协议悬浮窗
	function showProtocol(){
	    $("#addModal").modal({
	        keyboard : false,
	        show : true,
	        backdrop : "static"
	    });
	}
   		
	//用户协议悬浮窗取消
	function cancelProtocol(){
		$("#addModal").modal('hide');
	}
	
	//接受
	function acceptProtocol(){
		$("#protocol").attr("checked",true);
		$("#addModal").modal('hide');
	}
   
</script>


</html>