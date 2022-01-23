<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>kj12</title>
<!-- Tell the browser to be responsive to screen width -->
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
	name="viewport">
<!-- Bootstrap 3.3.6 -->
<%@ include file="common/public_css.jspf"%>
<style type="text/css">
.new-message {
	display: none;
	float: right;
	margin: 0px 30px 0 0;
	width: 18px;
	height: 18px;
	line-height: 18px;
	border-radius: 50%;
	background: #ff4400;
	color: #FFF;
	list-style: none;
	text-align: center;
	vertical-align: middle;
	font-family: Arial, Helvetica, sans-serif;
	font-size: 11px !important;
}
</style>

</head>
<body class="hold-transition skin-blue sidebar-mini">
	<div class="wrapper">

		<header class="main-header"> <!-- Logo --> <a
			href="index2.html" class="logo"> <!-- mini logo for sidebar mini 50x50 pixels -->
			<span class="logo-mini"><b>A</b>LT</span> <!-- logo for regular state and mobile devices -->
			<span class="logo-lg"><b>闪电物流后台管理系统</b></span>
		</a> <!-- Header Navbar: style can be found in header.less --> <nav
			class="navbar navbar-static-top"> <!-- Sidebar toggle button-->
		<a href="#" class="sidebar-toggle" data-toggle="offcanvas"
			role="button"> <span class="sr-only">Toggle navigation</span>
		</a>

		<div class="navbar-custom-menu">
			<ul class="nav navbar-nav">
				<!-- Messages: style can be found in dropdown.less-->
				<li class="dropdown messages-menu"><a href="#"
					class="dropdown-toggle" data-toggle="dropdown"> <i
						class="fa fa-envelope-o"></i> <span class="label label-success">4</span>
				</a>
					<ul class="dropdown-menu">
						<li class="header">You have 4 messages</li>
						<li>
							<!-- inner menu: contains the actual data -->
							<ul class="menu">
								<li>
									<!-- start message --> <a href="#">
										<div class="pull-left">
											<img src="/ui/dist/img/user2-160x160.jpg" class="img-circle"
												alt="User Image">
										</div>
										<h4>
											Support Team <small><i class="fa fa-clock-o"></i> 5
												mins</small>
										</h4>
										<p>Why not buy a new awesome theme?</p>
								</a>
								</li>
								<!-- end message -->
								<li><a href="#">
										<div class="pull-left">
											<img src="/ui/dist/img/user3-128x128.jpg" class="img-circle"
												alt="User Image">
										</div>
										<h4>
											AdminLTE Design Team <small><i class="fa fa-clock-o"></i>
												2 hours</small>
										</h4>
										<p>Why not buy a new awesome theme?</p>
								</a></li>
								<li><a href="#">
										<div class="pull-left">
											<img src="/ui/dist/img/user4-128x128.jpg" class="img-circle"
												alt="User Image">
										</div>
										<h4>
											Developers <small><i class="fa fa-clock-o"></i> Today</small>
										</h4>
										<p>Why not buy a new awesome theme?</p>
								</a></li>
								<li><a href="#">
										<div class="pull-left">
											<img src="/ui/dist/img/user3-128x128.jpg" class="img-circle"
												alt="User Image">
										</div>
										<h4>
											Sales Department <small><i class="fa fa-clock-o"></i>
												Yesterday</small>
										</h4>
										<p>Why not buy a new awesome theme?</p>
								</a></li>
								<li><a href="#">
										<div class="pull-left">
											<img src="/ui/dist/img/user4-128x128.jpg" class="img-circle"
												alt="User Image">
										</div>
										<h4>
											Reviewers <small><i class="fa fa-clock-o"></i> 2 days</small>
										</h4>
										<p>Why not buy a new awesome theme?</p>
								</a></li>
							</ul>
						</li>
						<li class="footer"><a href="#">See All Messages</a></li>
					</ul></li>
				<!-- Notifications: style can be found in dropdown.less -->
				<li class="dropdown notifications-menu"><a href="#"
					class="dropdown-toggle" data-toggle="dropdown"> <i
						class="fa fa-bell-o"></i> <span class="label label-warning">10</span>
				</a>
					<ul class="dropdown-menu">
						<li class="header">You have 10 notifications</li>
						<li>
							<!-- inner menu: contains the actual data -->
							<ul class="menu">
								<li><a href="#"> <i class="fa fa-users text-aqua"></i>
										5 new members joined today
								</a></li>
								<li><a href="#"> <i class="fa fa-warning text-yellow"></i>
										Very long description here that may not fit into the page and
										may cause design problems
								</a></li>
								<li><a href="#"> <i class="fa fa-users text-red"></i> 5
										new members joined
								</a></li>
								<li><a href="#"> <i
										class="fa fa-shopping-cart text-green"></i> 25 sales made
								</a></li>
								<li><a href="#"> <i class="fa fa-user text-red"></i>
										You changed your username
								</a></li>
							</ul>
						</li>
						<li class="footer"><a href="#">View all</a></li>
					</ul></li>
				<!-- Tasks: style can be found in dropdown.less -->
				<li class="dropdown tasks-menu"><a href="#"
					class="dropdown-toggle" data-toggle="dropdown"> <i
						class="fa fa-flag-o"></i> <span class="label label-danger">9</span>
				</a>
					<ul class="dropdown-menu">
						<li class="header">You have 9 tasks</li>
						<li>
							<!-- inner menu: contains the actual data -->
							<ul class="menu">
								<li>
									<!-- Task item --> <a href="#">
										<h3>
											Design some buttons <small class="pull-right">20%</small>
										</h3>
										<div class="progress xs">
											<div class="progress-bar progress-bar-aqua"
												style="width: 20%" role="progressbar" aria-valuenow="20"
												aria-valuemin="0" aria-valuemax="100">
												<span class="sr-only">20% Complete</span>
											</div>
										</div>
								</a>
								</li>
								<!-- end task item -->
								<li>
									<!-- Task item --> <a href="#">
										<h3>
											Create a nice theme <small class="pull-right">40%</small>
										</h3>
										<div class="progress xs">
											<div class="progress-bar progress-bar-green"
												style="width: 40%" role="progressbar" aria-valuenow="20"
												aria-valuemin="0" aria-valuemax="100">
												<span class="sr-only">40% Complete</span>
											</div>
										</div>
								</a>
								</li>
								<!-- end task item -->
								<li>
									<!-- Task item --> <a href="#">
										<h3>
											Some task I need to do <small class="pull-right">60%</small>
										</h3>
										<div class="progress xs">
											<div class="progress-bar progress-bar-red" style="width: 60%"
												role="progressbar" aria-valuenow="20" aria-valuemin="0"
												aria-valuemax="100">
												<span class="sr-only">60% Complete</span>
											</div>
										</div>
								</a>
								</li>
								<!-- end task item -->
								<li>
									<!-- Task item --> <a href="#">
										<h3>
											Make beautiful transitions <small class="pull-right">80%</small>
										</h3>
										<div class="progress xs">
											<div class="progress-bar progress-bar-yellow"
												style="width: 80%" role="progressbar" aria-valuenow="20"
												aria-valuemin="0" aria-valuemax="100">
												<span class="sr-only">80% Complete</span>
											</div>
										</div>
								</a>
								</li>
								<!-- end task item -->
							</ul>
						</li>
						<li class="footer"><a href="#">View all tasks</a></li>
					</ul></li>
				<!-- User Account: style can be found in dropdown.less -->
				<li class="dropdown user user-menu"><a href="#"
					class="dropdown-toggle" data-toggle="dropdown"> <img
						src="/ui/dist/img/user2-160x160.jpg" class="user-image"
						alt="User Image"> <span class="hidden-xs">注销</span>
				</a>
					<ul class="dropdown-menu">
						<!-- User image -->
						<li class="user-header"><img
							src="/ui/dist/img/user2-160x160.jpg" class="img-circle"
							alt="User Image">

							<p>
								${_user} - Web Developer <small>Member since Nov. 2012</small>
							</p></li>
						<!-- Menu Body -->
						<li class="user-body">
							<div class="row">
								<div class="col-xs-4 text-center">
									<a href="#">Followers</a>
								</div>
								<div class="col-xs-4 text-center">
									<a href="#">Sales</a>
								</div>
								<div class="col-xs-4 text-center">
									<a href="#">Friends</a>
								</div>
							</div> <!-- /.row -->
						</li>
						<!-- Menu Footer-->
						<li class="user-footer">
							<div class="pull-left">
								<a href="#" class="btn btn-default btn-flat">取消</a>
							</div>
							<div class="pull-right">
								<a href="logout.do" class="btn btn-default btn-flat">确定</a>
							</div>
						</li>
					</ul></li>
				<!-- Control Sidebar Toggle Button -->
				<li><a href="#" data-toggle="control-sidebar"><i
						class="fa fa-gears"></i></a></li>
			</ul>
		</div>
		</nav> </header>
		<!-- Left side column. contains the logo and sidebar -->
		<aside class="main-sidebar"> <!-- sidebar: style can be found in sidebar.less -->
		<section class="sidebar"> <!-- Sidebar user panel -->
		<div class="user-panel">
			<div class="pull-left image">
				<img src="/ui/dist/img/user2-160x160.jpg" class="img-circle"
					alt="User Image">
			</div>
			<div class="pull-left info">
				<p>${userName}</p>

				<a href="#"><i class="fa fa-circle text-success"></i> Online</a>
			</div>
		</div>
		<!-- search form -->
		<form action="#" method="get" class="sidebar-form">
			<div class="input-group">
				<input type="text" name="q" class="form-control"
					placeholder="Search..."> <span class="input-group-btn">
					<button type="submit" name="search" id="search-btn"
						class="btn btn-flat">
						<i class="fa fa-search"></i>
					</button>
				</span>
			</div>
		</form>
		<!-- /.search form --> <!-- sidebar menu: : style can be found in sidebar.less -->
		<ul class="sidebar-menu">
			<li class="header">MAIN NAVIGATION</li>


				<li class="treeview">
				<a href="#"> <i
						class="glyphicon glyphicon-cog"></i> <span>用户模块<span
							class="new-message" id="total-message"></span></span> <span
						class="pull-right-container"> <i
							class="fa fa-angle-left pull-right"></i>
					</span>
				</a>
					<ul class="treeview-menu">
							<li><a href="javascript:;" data-addtab="userId"
								   url="/jsp/user/userList.jsp" title="用户管理">
								<i class="glyphicon glyphicon-user"></i> 用户管理</a></li>
						<li><a href="javascript:;" data-addtab="roleId"
							   url="/showTab?id=2" title="角色管理">
							<i class="glyphicon glyphicon-leaf"></i> 角色管理</a></li>
						<li><a href="javascript:;" data-addtab="permissionId"
							   url="/showTab?id=3" title="权限管理">
							<i class="glyphicon glyphicon-fire"></i> 权限管理</a></li>
					</ul>

					<li>
			<li class="treeview">
				<a href="#"> <i
						class="glyphicon glyphicon-cog"></i> <span>物流模块<span
						class="new-message" id="total-message5"></span></span> <span
						class="pull-right-container"> <i
						class="fa fa-angle-left pull-right"></i>
					</span>
				</a>
				<ul class="treeview-menu">
					<li><a href="javascript:;" data-addtab="userId"
						   url="/showTab?id=1" title="用户管理">
						<i class="glyphicon glyphicon-user"></i> 用户管理</a></li>
					<li><a href="javascript:;" data-addtab="roleId"
						   url="/showTab?id=2" title="角色管理">
						<i class="glyphicon glyphicon-leaf"></i> 角色管理</a></li>
					<li><a href="javascript:;" data-addtab="permissionId"
						   url="/showTab?id=3" title="权限管理">
						<i class="glyphicon glyphicon-fire"></i> 权限管理</a></li>
				</ul>

			<li>
			<li class="treeview">
				<a href="#"> <i
						class="glyphicon glyphicon-cog"></i> <span>出库订单管理<span
						class="new-message" id="total-message9"></span></span> <span
						class="pull-right-container"> <i
						class="fa fa-angle-left pull-right"></i>
					</span>
				</a>
				<ul class="treeview-menu">
					<li><a href="javascript:;" data-addtab="orderId"
						   url="/jsp/order/orderList.jsp" title="查询订单">
						<i class="glyphicon glyphicon-user"></i> 查询订单</a></li>
					<li><a href="javascript:;" data-addtab="checkId"
						   url="/jsp/order/orderCheck.jsp" title="订单审核">
						<i class="glyphicon glyphicon-leaf"></i> 订单审核</a></li>
					<li><a href="javascript:;" data-addtab="orderShowId"
						   url="/showTab?id=3" title="权限管理">
						<i class="glyphicon glyphicon-fire"></i> 权限管理</a></li>
				</ul>

			<li>
			<li class="treeview">
				<a href="#"> <i
						class="glyphicon glyphicon-hand-right"></i> <span>鸟类模块<span
						class="new-message" id="total-message1"></span></span> <span
						class="pull-right-container"> <i
						class="fa fa-angle-left pull-right"></i>
					</span>
				</a>
				<ul class="treeview-menu">
					<li><a href="javascript:;" data-addtab="warehouseId"
						   url="/warehouse/showTab" title="鸟类写真">
						<i class="glyphicon glyphicon-home"></i> 鸟类写真<span
							class="new-message" id="dw-message2">2</span></a></li>

					<li><a href="javascript:;" data-addtab="warehouseShowId"
						   url="/warehouse/warehouseShow" title="濒危鸟类">
						<i class="glyphicon glyphicon-move"></i> 濒危鸟类<span
							class="new-message" id="dw-message3">2</span></a></li>
				</ul>

			<li>
			<li class="treeview">
				<a href="#"> <i
						class="glyphicon glyphicon-hand-right"></i> <span>站点管理<span
						class="new-message" id="total-message21"></span></span> <span
						class="pull-right-container"> <i
						class="fa fa-angle-left pull-right"></i>
					</span>
				</a>
				<ul class="treeview-menu">
					<li><a href="javascript:;" data-addtab="siteControl"
						   url="/jsp/user/siteControl.jsp" title="站点监控">
						<i class="glyphicon glyphicon-home"></i> 站点监控<span
							class="new-message" id="dw-message22">2</span></a></li>

					<li><a href="javascript:;" data-addtab="warehouseShowId"
						   url="/warehouse/warehouseShow" title="濒危鸟类">
						<i class="glyphicon glyphicon-move"></i> 濒危鸟类<span
							class="new-message" id="dw-message23">2</span></a></li>
				</ul>

			<li>

			<li class="treeview">
				<a href="#"> <i
						class="glyphicon glyphicon-cog"></i> <span>用户模块<span
						class="new-message" id="total-message4"></span></span> <span
						class="pull-right-container"> <i
						class="fa fa-angle-left pull-right"></i>
					</span>
				</a>
				<ul class="treeview-menu">
					<li><a href="javascript:;" data-addtab="userId"
						   url="/user/showTab" title="用户管理">
						<i class="glyphicon glyphicon-user"></i> 用户管理</a></li>
					<li><a href="javascript:;" data-addtab="zyzID"
						   url="/xx/showTab" title="志愿者管理">
						<i class="glyphicon glyphicon-user"></i> 志愿者管理</a></li>
				</ul>

			<li>

			<li class="header">LABELS</li>
			<li><a href="#"><i class="fa fa-circle-o text-red"></i> <span>Important</span></a></li>
			<li><a href="#"><i class="fa fa-circle-o text-yellow"></i> <span>Warning</span></a></li>
			<li><a href="#"><i class="fa fa-circle-o text-aqua"></i> <span>Information</span></a></li>
		</ul>
		</section> <!-- /.sidebar --> </aside>

		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Main content -->
			<section class="content">
			<div class="col-md-12" style="margin: 0; padding: 0;">
				<div id="tabs">
					<!-- Nav tabs -->
					<ul class="nav nav-tabs" role="tablist">

					</ul>
					<!-- Tab panes -->
					<div class="tab-content"
						style="border-left: 1px solid #DDD; border-right: 1px solid #DDD; border-bottom: 1px solid #DDD;"></div>
				</div>
			</div>
			</section>
			<!-- /.content -->
		</div>
		<!-- /.content-wrapper -->
		<footer class="main-footer">
		<div class="pull-right hidden-xs">
			<b>Version</b> 2.3.5
		</div>
		<strong>Copyright &copy; 2014-2016 <a
			href="http://almsaeedstudio.com">Almsaeed Studio</a>.
		</strong> All rights reserved. </footer>

		<!-- Control Sidebar -->
		<aside class="control-sidebar control-sidebar-dark"> <!-- Create the tabs -->
		<ul class="nav nav-tabs nav-justified control-sidebar-tabs">
			<li><a href="#control-sidebar-home-tab" data-toggle="tab"><i
					class="fa fa-home"></i></a></li>
			<li><a href="#control-sidebar-settings-tab" data-toggle="tab"><i
					class="fa fa-gears"></i></a></li>
		</ul>
		<!-- Tab panes -->
		<div class="tab-content">
			<!-- Home tab content -->
			<div class="tab-pane" id="control-sidebar-home-tab">
				<h3 class="control-sidebar-heading">Recent Activity</h3>
				<ul class="control-sidebar-menu">
					<li><a href="javascript:void(0)"> <i
							class="menu-icon fa fa-birthday-cake bg-red"></i>

							<div class="menu-info">
								<h4 class="control-sidebar-subheading">Langdon's Birthday</h4>

								<p>Will be 23 on April 24th</p>
							</div>
					</a></li>
					<li><a href="javascript:void(0)"> <i
							class="menu-icon fa fa-user bg-yellow"></i>

							<div class="menu-info">
								<h4 class="control-sidebar-subheading">Frodo Updated His
									Profile</h4>

								<p>New phone +1(800)555-1234</p>
							</div>
					</a></li>
					<li><a href="javascript:void(0)"> <i
							class="menu-icon fa fa-envelope-o bg-light-blue"></i>

							<div class="menu-info">
								<h4 class="control-sidebar-subheading">Nora Joined Mailing
									List</h4>

								<p>nora@example.com</p>
							</div>
					</a></li>
					<li><a href="javascript:void(0)"> <i
							class="menu-icon fa fa-file-code-o bg-green"></i>

							<div class="menu-info">
								<h4 class="control-sidebar-subheading">Cron Job 254
									Executed</h4>

								<p>Execution time 5 seconds</p>
							</div>
					</a></li>
				</ul>
				<!-- /.control-sidebar-menu -->

				<h3 class="control-sidebar-heading">Tasks Progress</h3>
				<ul class="control-sidebar-menu">
					<li><a href="javascript:void(0)">
							<h4 class="control-sidebar-subheading">
								Custom Template Design <span
									class="label label-danger pull-right">70%</span>
							</h4>

							<div class="progress progress-xxs">
								<div class="progress-bar progress-bar-danger" style="width: 70%"></div>
							</div>
					</a></li>
					<li><a href="javascript:void(0)">
							<h4 class="control-sidebar-subheading">
								Update Resume <span class="label label-success pull-right">95%</span>
							</h4>

							<div class="progress progress-xxs">
								<div class="progress-bar progress-bar-success"
									style="width: 95%"></div>
							</div>
					</a></li>
					<li><a href="javascript:void(0)">
							<h4 class="control-sidebar-subheading">
								Laravel Integration <span class="label label-warning pull-right">50%</span>
							</h4>

							<div class="progress progress-xxs">
								<div class="progress-bar progress-bar-warning"
									style="width: 50%"></div>
							</div>
					</a></li>
					<li><a href="javascript:void(0)">
							<h4 class="control-sidebar-subheading">
								Back End Framework <span class="label label-primary pull-right">68%</span>
							</h4>

							<div class="progress progress-xxs">
								<div class="progress-bar progress-bar-primary"
									style="width: 68%"></div>
							</div>
					</a></li>
				</ul>
				<!-- /.control-sidebar-menu -->

			</div>
			<!-- /.tab-pane -->
			<!-- Stats tab content -->
			<div class="tab-pane" id="control-sidebar-stats-tab">Stats Tab
				Content</div>
			<!-- /.tab-pane -->
			<!-- Settings tab content -->
			<div class="tab-pane" id="control-sidebar-settings-tab">
				<form method="post">
					<h3 class="control-sidebar-heading">General Settings</h3>

					<div class="form-group">
						<label class="control-sidebar-subheading"> Report panel
							usage <input type="checkbox" class="pull-right" checked>
						</label>

						<p>Some information about this general settings option</p>
					</div>
					<!-- /.form-group -->

					<div class="form-group">
						<label class="control-sidebar-subheading"> Allow mail
							redirect <input type="checkbox" class="pull-right" checked>
						</label>

						<p>Other sets of options are available</p>
					</div>
					<!-- /.form-group -->

					<div class="form-group">
						<label class="control-sidebar-subheading"> Expose author
							name in posts <input type="checkbox" class="pull-right" checked>
						</label>

						<p>Allow the user to show his name in blog posts</p>
					</div>
					<!-- /.form-group -->

					<h3 class="control-sidebar-heading">Chat Settings</h3>

					<div class="form-group">
						<label class="control-sidebar-subheading"> Show me as
							${userName} <input type="checkbox" class="pull-right" checked>
						</label>
					</div>
					<!-- /.form-group -->

					<div class="form-group">
						<label class="control-sidebar-subheading"> Turn off
							notifications <input type="checkbox" class="pull-right">
						</label>
					</div>
					<!-- /.form-group -->

					<div class="form-group">
						<label class="control-sidebar-subheading"> Delete chat
							history <a href="javascript:void(0)" class="text-red pull-right"><i
								class="fa fa-trash-o"></i></a>
						</label>
					</div>
					<!-- /.form-group -->
				</form>
			</div>
			<!-- /.tab-pane -->
		</div>
		</aside>
		<!-- /.control-sidebar -->
		<!-- Add the sidebar's background. This div must be placed
       immediately after the control sidebar -->
		<div class="control-sidebar-bg"></div>
	</div>

	<!-- jQuery 2.2.3 -->
	<script src="/ui/plugins/jQuery/jquery-2.2.3.min.js"></script>
	<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
	<!-- Bootstrap 3.3.6 -->
	<script src="/ui/bootstrap/js/bootstrap.min.js"></script>
	<script src="/ui/plugins/morris/morris.min.js"></script>
	<!-- Bootstrap WYSIHTML5 -->
	<script
		src="/ui/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
	<!-- Slimscroll -->
	<script src="/ui/plugins/slimScroll/jquery.slimscroll.min.js"></script>
	<!-- FastClick -->
	<script src="/ui/plugins/fastclick/fastclick.js"></script>
	<!-- AdminLTE App -->
	<script src="/ui/dist/js/app.min.js"></script>
	<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
	<script src="/ui/dist/js/pages/dashboard.js"></script>
	<!-- AdminLTE for demo purposes -->
	<script src="/ui/dist/js/demo.js"></script>
	<script src="/ui/bootstrap3-dialog/src/js/bootstrap-dialog.js"></script>
	<script src="/ui/bootstrap3-dialog/dialogUtils.js"></script>
	<script src="/ui/bootstrap/js/bootstrap-addtabs.js"></script>
	<script src="/ui/plugins/jqueryForm/jquery-form.js"></script>
	<script type="text/javascript">

		$('#tabs').addtabs({
			monitor : '.sidebar-menu'
		});

		function addTab(id, title, url, isAjax) {
			Addtabs.add({
				id : id,
				title : title,
				content : Addtabs.options.content ? Addtabs.options.content
						: $(this).attr('content'),
				url : url,
				ajax : isAjax
			});
		}

		function closeTab(id) {
			Addtabs.close(id);
		}
	</script>

</body>
</html>