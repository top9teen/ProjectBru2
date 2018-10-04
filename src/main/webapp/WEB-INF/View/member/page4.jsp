<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@page import="java.util.List"%>
<%@page import="com.Bru.Bean.*"%>
<!DOCTYPE html>

<html>
<head>
<jsp:include page="../../Template/heder.jsp"></jsp:include>

</head>

<body>

	<!--Preloader-->
	<div class="preloader-it">
		<div class="la-anim-1"></div>
	</div>
	<!--/Preloader-->
	<div class="wrapper  theme-5-active pimary-color-blue">


		<jsp:include page="../../Template/manumember.jsp"></jsp:include>



		<!-- Main Content -->
		<div class="page-wrapper">
			<div class="container-fluid">
				<input type="hidden" id="regid" name="regid" id="regid">
				<!-- Title -->
				<div class="row heading-bg">
					<div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
						
					</div>
					<!-- Breadcrumb -->
					<div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
						<ol class="breadcrumb">
							<li><a>หน้าแรก</a></li>
							<li><a><span>เปลี่ยนรหัสผ่าน</span></a></li>

						</ol>
					</div>
					<!-- /Breadcrumb -->
				</div>
				<!-- /Title -->
				<% String result = ""; %>
				<%	result = (String) request.getAttribute("re"); %>
				<!-- Row -->
				<div class="row">
					<div class="col-sm-3"></div>
					<div class="col-sm-6">
						<div class="panel panel-default card-view">
							<div class="panel-heading">
								<div class="pull-left">
						
								</div>
								<div class="clearfix"></div>
							</div>

							<div class="panel-wrapper collapse in">
								<div class="form-wrap">
								
									<form action="refass" name="refass23"
										OnSubmit="return vvvvvff();">
										<h2 align="center">เปลี่ยนรหัสผ่าน</h2>
										<%if(result.equals("L")){ %>
											<div class="alert alert-success alert-dismissable">
											<button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
											<i class="zmdi zmdi-check pr-15 pull-left"></i><p class="pull-left">เปลี่ยนรหัสสำเร็จ.</p> 
											<div class="clearfix"></div>
										</div>
										<%}else if(result.equals("F")){ %>
										<div class="alert alert-danger alert-dismissable">
											<button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
											<i class="zmdi zmdi-block pr-15 pull-left"></i><p class="pull-left">ผิดพลาด.</p>
											<div class="clearfix"></div>
										</div>
										<%} %>
									
										<div class="form-group">
											<label class="control-label mb-10" for="exampleInputuname_1">รหัสเดิม</label>
											<div class="input-group">
												<div class="input-group-addon">
													<i class="icon-user"></i>
												</div>
												<input type="text" name="repassed" class="form-control"
													id="exampleInputuname_1" placeholder="repassed">
											</div>
										</div>

										<div class="form-group">
											<label class="control-label mb-10" for="exampleInputuname_1">รหัสใหม่</label>
											<div class="input-group">
												<div class="input-group-addon">
													<i class="icon-lock"></i>
												</div>
												<input type="text" name="newpass" class="form-control"
													id="exampleInputuname_1" placeholder="newpass">
											</div>
										</div>
										<div class="form-group">
											<label class="control-label mb-10" for="exampleInputuname_1">รหัสใหม่-อีกครั้ง</label>
											<div class="input-group">
												<div class="input-group-addon">
													<i class="icon-lock"></i>
												</div>
												<input type="text" name="newpass2" class="form-control"
													id="exampleInputuname_1" placeholder="newpass2">
											</div>
										</div>

										<div class="form-group">
											<input type="submit" class="btn btn-success mr-10"
												value="เปลี่ยนรหัส">
										</div>

									</form>
								</div>
							</div>
						</div>
					</div>

				</div>
				<!-- /Row -->









			</div>

			<!-- Footer -->
			<footer class="footer container-fluid pl-30 pr-30">
				<div class="row">
					<div class="col-sm-12">
						<p>2018 &copy; ระบบสินเชื่อรถยนต์อออนไลน์</p>
					</div>
				</div>
			</footer>
			<!-- /Footer -->

		</div>

		<!-- /Main Content -->

	</div>
	<!-- /#wrapper -->

	<!-- JavaScript -->

	<!-- jQuery -->
	<script src="vendors/bower_components/jquery/dist/jquery.min.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script
		src="vendors/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

	<!-- Data table JavaScript -->
	<script
		src="vendors/bower_components/datatables/media/js/jquery.dataTables.min.js"></script>
	<script src="dist/js/dataTables-data.js"></script>

	<!-- Slimscroll JavaScript -->
	<script src="dist/js/jquery.slimscroll.js"></script>

	<!-- Owl JavaScript -->
	<script
		src="vendors/bower_components/owl.carousel/dist/owl.carousel.min.js"></script>

	<!-- Switchery JavaScript -->
	<script src="vendors/bower_components/switchery/dist/switchery.min.js"></script>

	<!-- Fancy Dropdown JS -->
	<script src="dist/js/dropdown-bootstrap-extended.js"></script>

	<!-- Init JavaScript -->
	<script src="dist/js/init.js"></script>
	<script type="text/javascript">
	function vvvvvff() {
		if (document.refass23.repassed.value == "") {
			alert('กรุณา ใส่รหัสเดิม');
			document.refass23.repassed.focus();
			return false;
		}
		if (document.refass23.newpass.value == "") {
			alert('กรุณา ใส่รหัสผ่านใหม่');
			document.refass23.newpass.focus();
			return false;
		}
		if (document.refass23.newpass2.value == "") {
			alert('กรุณา ใส่รหัสผ่านใหม่อีกครั้ง');
			document.refass23.newpass2.focus();
			return false;
		}
		if (document.refass23.newpass.value != document.refass23.newpass2.value) {
			alert('กรุณารหัสผ่านไม่ตรงกัน');
			document.refass23.newpass.focus();
			return false;
		}
	}
</script>

</body>

</html>



