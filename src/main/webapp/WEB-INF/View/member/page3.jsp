<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	<%@page import="java.util.List"%>
<%@page import="com.Bru.Bean.*"%>
<!DOCTYPE html>

<html >
<head>
<jsp:include page="../../Template/heder.jsp"></jsp:include>

</head>

<body>
<% SimpleTestBean bean = null ;
	bean = (SimpleTestBean) request.getSession().getAttribute("bean");
	%>
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
					  <h5 class="txt-dark">รายการสินเชื่อ</h5>
					</div>
					<!-- Breadcrumb -->
					<div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
					  <ol class="breadcrumb">
						<li><a >หน้าแรก</a></li>
						<li><a ><span>จ่ายค่างวด</span></a></li>
						
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
							<input type="hidden" value="<%=bean.getEmail()%>" id="teas">
							<div class="panel-wrapper collapse in">
								<div class="panel-body">
									<div class="table-wrap">
										<div class="table-responsive">
											<table id="datable_1" class="table table-hover display  pb-30" >
												<thead>
													<tr>
														<th>ลำดับ</th>
														<th>ชื่อ</th>
														<th>รถ</th>
														<th>email</th>
														<th>เงืนที่ต้องจ่าย</th>
														
														<th>งวดทั้งหมด</th>
														<th>งวดที่เหลือ</th>
														<th>จ่ายผ่าน</th>
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
														<th>จ่ายผ่าน</th>
													</tr>
												</tfoot>
												<tbody>
			
					
													<tr id ="test2">
														<td id="t1">f</td>
														<td id="t2">f</td>
														<td id="t3">f</td>
														<td id="t4">f</td>
														<td id="t5">f</td>
														<td id="t6">f</td>
														<td id="t7">f</td>
													
														<td id="t8"><button onclick="gotoUpdate('')" class="btn btn-success btn-icon-anim btn-square">เลือก</button></td>
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
	$(document).ready(function() {
		var simbean = {
				"name" : $('#teas').val()};

		 var table = $('#datable_1').DataTable({
				"sAjaxSource": "http://localhost:8090/bank32",
				"sAjaxDataProp": "JSON.stringify(simbean)",
				"order": [[ 0, "asc" ]],
				"aoColumns": [
				    { "mData": "ลำดับ"},
			      { "mData": "ชื่อ" },
					  { "mData": "รถ" },
					  { "mData": "email" },
					  { "mData": "เงืนที่ต้องจ่าย" },
					  { "mData": "งวดที่เหลือ" },
					  { "mData": "จ่ายผ่าน" }
				]
		 })
		
	});
	</script>
    <!-- jQuery -->
    <script src="vendors/bower_components/jquery/dist/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="vendors/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
    
	<!-- Data table JavaScript -->
	<script src="vendors/bower_components/datatables/media/js/jquery.dataTables.min.js"></script>
	<script src="dist/js/dataTables-data.js"></script>
	
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
