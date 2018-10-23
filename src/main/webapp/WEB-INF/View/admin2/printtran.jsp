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

		<%
			List<ReceiptBean> list = null;
			Integer a = 0;
		%>
		<%
			list = (List<ReceiptBean>) request.getSession().getAttribute("list");
		%>

			<jsp:include page="../../Template/manuadmin2.jsp"></jsp:include>



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
							<li><a><span>รายการสินเชื่อ</span></a></li>

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
								<div class="row">
								<form action="ckmo">
								
								<div
						class=" col-sm-2" >
						<select class="fontSize-s fontFamily-thonburi  form-control"
							name="d1" id="foPrefix">
							<option value="0">ทั้งหมด</option>
								<option value="1">01</option>
								<option value="2">02</option>
								<option value="3">03</option>
								<option value="4">04</option>
								<option value="5">05</option>
								<option value="6">06</option>
								<option value="7">07</option>
								<option value="8">08</option>
								<option value="9">09</option>
								<option value="10">10</option>
								<option value="11">11</option>
								<option value="12">12</option>
								<option value="13">13</option>
								<option value="14">14</option>
								<option value="15">15</option>
								<option value="16">16</option>
								<option value="17">17</option>
								<option value="18">18</option>
								<option value="19">19</option>
								<option value="20">20</option>
								<option value="21">21</option>
								<option value="22">22</option>
								<option value="23">23</option>
								<option value="24">24</option>
								<option value="25">25</option>
								<option value="26">26</option>
								<option value="27">27</option>
								<option value="28">28</option>
								<option value="29">29</option>
								<option value="30">30</option>
								<option value="31">31</option>
						</select>
					</div>
								
								
									<div
						class=" col-sm-3" >
						<select class="fontSize-s fontFamily-thonburi  form-control"
							name="m1" id="foPrefix">
							<option value="0">เดือนทั้งหมด</option>
								<option value="มกราคม">มกราคม</option>
								<option value="กุมภาพันธ์">กุมภาพันธ์</option>
								<option value="มีนาคม">มีนาคม</option>
								<option value="เมษายน">เมษายน</option>
								<option value="พฤษภาคม">พฤษภาคม</option>
								<option value="มิถุนายน">มิถุนายน</option>
								<option value="กรกฎาคม">กรกฎาคม</option>
								<option value="สิงหาคม">สิงหาคม</option>
								<option value="กันยายน">กันยายน</option>
								<option value="ตุลาคม">ตุลาคม</option>
								<option value="พฤศจิกายน">พฤศจิกายน</option>
								<option value="ธันวาคม">ธันวาคม</option>
						</select>
					</div>
						<div
						class=" col-sm-2" >
						<select class="fontSize-s fontFamily-thonburi  form-control"
							name="y1" id="foPrefix">
							<option value="0">ปีทั้งหมด</option>
							<option value="2561">2561</option>
							<option value="2562">2562</option>
							<option value="2563">2563</option>
							<option value="2564">2564</option>
							<option value="2565">2565</option>
							<option value="2566">2566</option>
							<option value="2567">2567</option>
							<option value="2568">2568</option>
							<option value="2569">2569</option>
							<option value="2570">2570</option>
						</select>
					</div>
					<div
					
					
						class=" col-sm-3" >
						<button class="btn btn-success btn-outline btn-icon right-icon"><span>ยืนยัน</span> <i class="fa fa-check"></i> </button>
					</div>
						</form>
								<!-- row -->
								</div>
								<!-- end row se -->
								<br>
									<div class="table-wrap">
										<div class="table-responsive">
												<table id="example" class="table table-hover display  pb-30" >
												<thead>
													<tr>
														<th >ลำดับ</th>
														<th>ชื่อ</th>
														<th>อีเมลล์</th>
														<th>ปีรถ</th>
														<th>ยี่ห่อรถ</th>
														<th>รุ่นรถ</th>
														<th>แบงค์</th>
														<th>จำนวนเงิน</th>
														<th>วันเดือนปีที่จ่าย</th>
														
													</tr>
												</thead>
												<tfoot>
													<tr>
													<th >ลำดับ</th>
														<th>ชื่อ</th>
														<th>อีเมลล์</th>
														<th>ปีรถ</th>
														<th>ยี่ห่อรถ</th>
														<th>รุ่นรถ</th>
														<th>แบงค์</th>
														<th>จำนวนเงิน</th>
														<th>วันเดือนปีที่จ่าย</th>
														
													</tr>
												</tfoot>
												<tbody>
													<%
														for (int i = 0; i < list.size(); i++) {
													%>

													<tr>
														<td><%=a = a + 1%></td>
														<td><%=list.get(i).getReName()%></td>
														<td><%=list.get(i).getReEmail()%></td>
														<td><%=list.get(i).getReCaryear()%></td>
														<td><%=list.get(i).getReCar()%></td>
														<td><%=list.get(i).getReCarmodel()%></td>
														<td><%=list.get(i).getReBank()%></td>
														<td><%=list.get(i).getReMonny()%></td>
														<td><%=list.get(i).getReDay()%> / <%=list.get(i).getReMont()%>
															/ <%=list.get(i).getReYrar()%></td>
													
													<%
														}
													%>


												</tbody>
											</table>
										</div>
									</div>
										<div class="w3-modal " id="Forms25" style="display: none;">
		

				<jsp:include page="fromtranfer.jsp"></jsp:include>
				 <input  type="button"
					class="btn btn-info btn-lg"
					onclick="document.getElementById('Forms25').style.display='none'"
					value="ยกเลิก">
			</div>
		</div>
								</div>
							</div>
						</div>
					</div>

				</div>
				<!-- /Row -->
				<!-- Row2 -->

				<div class="row" style="display: none;" id="Forms2">
					<div class="col-md-12">
						<div class="panel panel-default card-view">
							<div class="panel-heading">
								<div class="panel-wrapper collapse in  panel-body">
									<h4 align="center">ประวัติ</h4>

									<jsp:include page="reconBody.jsp"></jsp:include>
								</div>
							</div>
						</div>
					</div>
				</div>

				<!-- /Row2 -->




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

	
	<!-- /#wrapper -->

	<!-- JavaScript -->

 <!-- jQuery -->
    <script src="vendors/bower_components/jquery/dist/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="vendors/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/1.5.2/js/dataTables.buttons.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.flash.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/pdfmake.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/vfs_fonts.js"></script>
    <script src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.html5.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.print.min.js"></script>
    <!-- Slimscroll JavaScript -->
	<script src="dist/js/jquery.slimscroll.js"></script>
	
	<!-- Owl JavaScript -->
	<script src="vendors/bower_components/owl.carousel/dist/owl.carousel.min.js"></script>
	
	<!-- Switchery JavaScript -->
	<script src="vendors/bower_components/switchery/dist/switchery.min.js"></script>
		
		<script src="dist/js/init.js"></script>
	<!-- Fancy Dropdown JS -->
	<script src="dist/js/dropdown-bootstrap-extended.js"></script>
	<script type="text/javascript">
	$(document).ready(function() {
	    $('#example').DataTable( {
	        dom: 'Bfrtip',
	        buttons: [
	            'copy', 'csv', 'excel', 'pdf', 'print'
	        ]
	    } );
	} );
	</script>


</body>

</html>
