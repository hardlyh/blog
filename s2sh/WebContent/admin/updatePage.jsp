<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.Date"%>
    <%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>lyh2016.cn - 后台管理</title>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
	<!-- VENDOR CSS -->
	<link rel="stylesheet" type="text/css" href="dist/css/wangEditor.css">
	<%@ include file="js_css.jsp" %> 
</head>
<style type="text/css">
	

</style>
<body>
	<!-- WRAPPER -->
	<div id="wrapper">
		<!-- NAVBAR -->
		<nav class="navbar navbar-default navbar-fixed-top">
			<%@ include file="nav.jsp" %>  
		</nav>
		<!-- END NAVBAR -->
		<!-- LEFT SIDEBAR -->
		<div id="sidebar-nav" class="sidebar">
			<%@ include file="siderbar-nav.jsp" %>  
		</div>
		<!-- END LEFT SIDEBAR -->
		<!-- MAIN -->
		<div class="main">
			<!-- MAIN CONTENT -->
			<div class="main-content">
				<div class="container-fluid">
					<!-- OVERVIEW -->
					<div class="panel panel-headline">
						<div class="panel-heading">
							<h3 class="panel-title">修改文章</h3>
							<p class="panel-subtitle">Period: edit . </p>
						</div>
						<div class="panel-body">
							<div style="width:80%; margin:0 auto;">
								<form class="form-horizontal" id="pageForm"  action="pageAction_updatePageTwo.action"  method="post" enctype="multipart/form-data">
									<input type="hidden" name="page.pid" value="${page.pid }">
									<input type="hidden" name="page.htmlUrl" value="${page.htmlUrl }">
									<input type="hidden" name="page.comment" value="${page.comment }">
									<input type="hidden" name="page.pageview" value="${page.pageview }">
									<label>题目:</label>
								
									<input type="text" value="${page.title }" name="page.title" class="form-control" placeholder="Search dashboard..." >															
									<br>
									<label>标签:</label>
									
									<select id="tagList"  class="form-control" name="page.tag" style="width: 65%;">
										<s:iterator value="#application.tagList" var="l">
											
											<option value="${l.name }">${l.name }</option>
											
										</s:iterator>
									</select>
									
									
									<div style="height: 60px; width: 25%; margin-top: -54px; margin-left:75%; ">
										<label>是否公开:</label>
										<label class="fancy-radio" style="margin-top: 7px;">
											<input name="page.isprivate" value="no" type="radio">
											<span><i></i>公开</span>
										</label>
										<label class="fancy-radio" style="margin-left: 82px;margin-top: -25px; ">
											<input name="page.isprivate" value="yes" type="radio">
											<span><i></i>私密</span>
										</label>
									</div>
									<input name="page.head_url" value="${page.head_url }" type="hidden">	
									<br>
									<label>封面图片:</label>
									<input type="file" name="file" id="file1" value="" style="DISPLAY: none;">
									<div class="input-group" style="width: 60%;">
										<input type="text" value="" class="form-control" placeholder="1920×1080或者比例放大缩小为最佳显示效果" id="file_text">
										<span class="input-group-btn" id="file_button"><button type="button" class="btn btn-primary">Click me</button></span>
									</div>
									<br>
									<label>内容:</label>
									<textarea id="div1" style="height: 300px;" >
									    <p>请输入内容...</p>
									</textarea>	
									<br>
									<div style="width: 80px; margin-left:  90%; ">
										<%=new Date().toLocaleString() %>
									</div>
									<br>
									<input type="hidden" name="page.content" id="text1">
									<div id="tt" style="">
										${page.content }
									</div>
									
									<div style="width: 80px; margin-left:  90%; ">
									<button type="button" id="submit1" class="btn btn-success" >提交</button>	
									</div>	
									
									
									
									
								</form>	
							</div>	
						</div>
					</div>
				</div>
				

				<div class="panel-body">
					
				</div>
			</div>

			<!-- END TASKS -->
		</div>
	
	
		
	
		
		<!-- END MAIN -->
		<div class="clearfix"></div>
		<%@ include file="footer.jsp" %>  
	
	</div>
	
	
	<!-- END WRAPPER -->
	<!-- Javascript -->
	<script type="text/javascript" src="dist/js/wangEditor.js"></script>
	<%@ include file="js_css.jsp" %> 
	<script>
	$(document).ready(function() {
		$("#tt").hide();
		$("#pageList").addClass("active");

		var editor = new wangEditor('div1');
	
   		 editor.create();
  		 		 
   		var s=$("#tt").html();
   		 
   		editor.$txt.html('');
   	
   		editor.$txt.append(s);
   		 
   		 $("#submit1").click(function(){
   			 
   			if(confirm("是否提交")){
   			 var html = editor.$txt.html();
   			
   			 $("#text1").val(html.trim());
   			
   			 $("#pageForm").submit();
   			}else{
   				return false;
   			}
   		 });
   		 
   		 $("#file_button").click(function(){
 		 	$("#file1").click();
 		 });

		 $("#file1").change(function(){
		 	$("#file_text").val($(this).val())
		 })

   		 $("#tagList option").each(function(){
   		 	var s=$(this).val();
   		 	if(s=='${page.tag}'){
   		 		$(this).prop("selected",true);
   		 	}
   		 });
   		 
  		  $(":radio").each(function(){
   		 		if($(this).val()=='${page.isprivate}'){
   		 			$(this).prop("checked",true);
   		 		}
   		 });
   		 
   		 
	 })

	</script>

		
</body>

</html>
