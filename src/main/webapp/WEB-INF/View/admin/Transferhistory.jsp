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

		<jsp:include page="../../Template/manuadmin.jsp"></jsp:include>



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
									<div class="table-wrap">
										<div class="table-responsive">
												<table id="example" class="table table-hover display  pb-30 dataTable" >
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
														<th>ดูใบเสร็จ</th>
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
														<th>ดูใบเสร็จ</th>
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
														<td ><button  class="btn btn-success btn-icon-anim btn-square"
															onclick="gotoUpdateggggg('<%=list.get(i).getReId()%>')">ดู</button></td>
													</tr>
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

	</div>
	<!-- /#wrapper -->

	<!-- JavaScript -->
<script type="text/javascript">
	function gotoUpdateggggg(filter) {
		 document.getElementById("regid").value = filter;
		var simpleTestBean = { "xxx" :  $('#regid').val()};
		
		$.ajax({
			type : "POST",
			url : "/Tran",
			data : JSON.stringify(simpleTestBean),
			contentType : "application/json; charset=utf-8",
			dataType : "json",
			success : function(msg) {
				console.log('Success')
				$('#idtran').text('     เลขที่'+ msg.reYrar +'/' +msg.reId);
				$('#day').text('  วันที่ '+msg.reDay + ' เดือน  ' + msg.reMont + ' พ.ศ  ' + msg.reYrar);
				$('#nametran').text(
						'  ชื่อ - นามสกุล  ' + msg.reName
								);
				$('#emailtran').text('  Email ' + msg.reEmail);
				$('#yearcartran').text('  ปีรถ  ' + msg.reCaryear);
				$('#cartran').text('  ยี่ห่อ  ' + msg.reCar);
				$('#modeltran').text('  รุ่น  ' + msg.reCarmodel);
				$('#monnytran').text(
						'  เงินที่จ่าย ' + msg.reMonny+" บาทถ้วน");
				$('#admintran').text(
						'ผู้รับเงิน  ' + msg.reAdmin +"  ");
			}
		});
	$("#Forms25").show('slow');
	//$("#Forms25").onload="window.print()";
	}

			function printDiv(divName) {
			     var printContents = document.getElementById(divName).innerHTML;
			     var originalContents = document.body.innerHTML;
			     document.body.innerHTML = printContents;
			     window.print();
			     document.body.innerHTML = originalContents;
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
