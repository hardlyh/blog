<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<div class="brand">
	<a href="index.html"><img src="assets/img/logo-dark.png" alt="Klorofil Logo" class="img-responsive logo"></a>
</div>
<div class="container-fluid">
	<div class="navbar-btn">
		<button type="button" class="btn-toggle-fullwidth">
			<i class="lnr lnr-arrow-left-circle"></i>
		</button>
	</div>
	<!-- 	
				搜索框
				<form class="navbar-form navbar-left">
					<div class="input-group">
						<input type="text" value="" class="form-control" placeholder="Search dashboard...">
						<span class="input-group-btn"><button type="button" class="btn btn-primary">Go</button></span>
					</div>
				</form> -->
	<!-- <div class="navbar-btn navbar-btn-right">
					<a class="btn btn-success update-pro" href="#downloads/klorofil-pro-bootstrap-admin-dashboard-template/?utm_source=klorofil&utm_medium=template&utm_campaign=KlorofilPro" title="Upgrade to Pro" target="_blank"><i class="fa fa-rocket"></i> <span>UPGRADE TO PRO</span></a>
				</div> -->
	<div id="navbar-menu">
		<ul class="nav navbar-nav navbar-right">
		<!-- 
			<li class="dropdown"><a href="#" class="dropdown-toggle icon-menu" data-toggle="dropdown"> <i class="lnr lnr-alarm"></i> <span class="badge bg-danger">5</span>
			</a> 
			<ul class="dropdown-menu notifications">
					<li><a href="#" class="notification-item"><span class="dot bg-warning"></span>System space is almost full</a></li>
					<li><a href="#" class="notification-item"><span class="dot bg-danger"></span>You have 9 unfinished tasks</a></li>
					<li><a href="#" class="notification-item"><span class="dot bg-success"></span>Monthly report is available</a></li>
					<li><a href="#" class="notification-item"><span class="dot bg-warning"></span>Weekly meeting in 1 hour</a></li>
					<li><a href="#" class="notification-item"><span class="dot bg-success"></span>Your request has been approved</a></li>
					<li><a href="#" class="more">See all notifications</a></li>
				</ul></li>
			<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="lnr lnr-question-circle"></i> <span>Help</span> <i class="icon-submenu lnr lnr-chevron-down"></i></a>
				<ul class="dropdown-menu">
					<li><a href="#">Basic Use</a></li>
					<li><a href="#">Working With Data</a></li>
					<li><a href="#">Security</a></li>
					<li><a href="#">Troubleshooting</a></li>
				</ul></li>
		-->
			<li class="dropdown">
				<a href="#" class="dropdown-toggle" data-toggle="dropdown">
				<img src="assets/img/user-medium.png" class="img-circle" alt="Avatar"> 
				<span>${session.user.username }</span>
			    <i class="icon-submenu lnr lnr-chevron-down"></i></a>
				<ul class="dropdown-menu">
					<li><a href="myProfileAction_findMyProfile.action"><i class="lnr lnr-user"></i> <span>个人信息</span></a></li>
					<li><a href="adminAction_updateOne"><i class="lnr lnr-cog"></i> <span>修改密码</span></a></li>
					<li><a href="adminAction_quit" onclick="return confirm('是否注销');"><i class="lnr lnr-exit"></i> <span>注销</span></a></li>
				</ul>
				
			</li>
			<!-- 
						升级为pro
						<li>
							<a class="update-pro" href="#downloads/klorofil-pro-bootstrap-admin-dashboard-template/?utm_source=klorofil&utm_medium=template&utm_campaign=KlorofilPro" title="Upgrade to Pro" target="_blank"><i class="fa fa-rocket"></i> <span>UPGRADE TO PRO</span></a>
						</li> -->
		</ul>
	</div>
</div>