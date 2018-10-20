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


	<jsp:include page="../../Template/manuadmin2.jsp"></jsp:include>

		<%
			List<GatherBean> list = null;
			Integer a = 0;
		%>
		<%
			list = (List<GatherBean>) request.getSession().getAttribute("list");
		%>
		<!-- Main Content -->
		<div class="page-wrapper">
			<div class="container-fluid">
				<input type="hidden" id="regid" name="regid" id="regid">
				<!-- Title -->
				<div class="row heading-bg">
					<div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
						<h5 class="txt-dark">รายการสินเชื่อ</h5>
					</div>
					<!-- Breadcrumb -->
					<div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
						<ol class="breadcrumb">
							<li><a>หน้าแรก</a></li>
							<li><a><span>จ่ายค่างวด</span></a></li>

						</ol>
					</div>
					<!-- /Breadcrumb -->
				</div>
				<!-- /Title -->

				<!-- Row -->
				<div class="row">
					<div class="col-sm-12">
						<div class="panel panel-default card-view">
							<div class="panel-heading">
								<div class="pull-left">
									<h6 class="panel-title txt-dark">รายการสินเชื่อ</h6>
								</div>
								<div class="clearfix"></div>
							</div>
							
								
							
							<div class="panel-wrapper collapse in">
								<div class="panel-body">
									<div class="table-wrap">
										<div class="table-responsive">
											<table id="example"
												class="table table-hover display  pb-30 dataTable">
												<thead>
													<tr>
														<th>ลำดับ</th>
														<th>ชื่อ</th>
														<th>รถ</th>
														<th>email</th>
														<th>เงืนที่ต้องจ่าย</th>
														<th>งวดทั้งหมด</th>
														<th>งวดที่เหลือ</th>
														
													</tr>
												</thead>
												<tfoot>
													<tr>
														<th>ลำดับ</th>
														<th>ชื่อ</th>
														<th>รถ</th>
														<th>email</th>
														<th>เงืนที่ต้องจ่าย</th>
														<th>งวดทั้งหมด</th>
														<th>งวดที่เหลือ</th>
														
													</tr>
												</tfoot>
												<tbody>
													<%
														for (int i = 0; i < list.size(); i++) {
													%>
													<tr>
														<td><%=a = a + 1%></td>
														<td><%=list.get(i).getGaName()%></td>
														<td><%=list.get(i).getGaCar()%></td>
														<td><%=list.get(i).getGaEmail()%></td>
														<td><%=list.get(i).getGaPrie()%> บาท</td>
														<td><%=list.get(i).getGaFistPeriod()%></td>
														<td><%=list.get(i).getGaLastPeriod()%></td>
														
													</tr>
													<%
														}
													%>
												</tbody>
											</table>
										</div>
									</div>
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
<script type="text/javascript">
	
	function gotohos122(filter) {
	
		 document.getElementById("regid23").value = filter;
		document.welcome.action = "pay";
		document.welcome.submit(); 
		
	}

	
	</script>
	<!-- jQuery -->
  <script src="vendors/bower_components/jquery/dist/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="vendors/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
    
	<!-- Data table JavaScript -->
	<script src="vendors/bower_components/datatables/media/js/jquery.dataTables.min.js"></script>
	<script src="vendors/bower_components/datatables.net-buttons/js/dataTables.buttons.min.js"></script>
	<script src="vendors/bower_components/datatables.net-buttons/js/buttons.flash.min.js"></script>
	<script src="vendors/bower_components/jszip/dist/jszip.min.js"></script>
	<script src="vendors/bower_components/pdfmake/build/pdfmake.min.js"></script>
	<script src="vendors/bower_components/pdfmake/build/vfs_fonts.js"></script>
	
	<script src="vendors/bower_components/datatables.net-buttons/js/buttons.html5.min.js"></script>
	<script src="vendors/bower_components/datatables.net-buttons/js/buttons.print.min.js"></script>
	<script src="dist/js/export-table-data.js"></script>
	
	<!-- Slimscroll JavaScript -->
	<script src="dist/js/jquery.slimscroll.js"></script>
	
	<!-- Owl JavaScript -->
	<script src="vendors/bower_components/owl.carousel/dist/owl.carousel.min.js"></script>
	
	<!-- Switchery JavaScript -->
	<script src="vendors/bower_components/switchery/dist/switchery.min.js"></script>
	
	
	<!-- Fancy Dropdown JS -->
	<script src="dist/js/dropdown-bootstrap-extended.js"></script>
	
	<!-- Init JavaScript -->
	<script src="dist/js/init.js"></script>

</body>

</html>
