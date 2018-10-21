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
	<%
		SimpleTestBean bean = null;
		bean = (SimpleTestBean) request.getSession().getAttribute("bean");
	%>
	<!--Preloader-->
	<div class="preloader-it">
		<div class="la-anim-1"></div>
	</div>
	<!--/Preloader-->
	<div class="wrapper  theme-5-active pimary-color-blue">


		<jsp:include page="../../Template/manumember.jsp"></jsp:include>


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
						<h5 class="txt-dark"style="font-size: 20pt;">จ่ายค่างวด</h5>
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
									<h6 class="panel-title txt-dark"></h6>
								</div>
								<div class="clearfix"></div>
							</div>
							<form action="." name="welcome">
							
							<input type="hidden" name="regid" id="regid23">
							</form>
								<input type="hidden" value="<%=bean.getEmail()%>" id="teas">
							
							<div class="panel-wrapper collapse in">
								<div class="panel-body">
									<div class="table-wrap">
										<div class="table-responsive">
											<table id="datable_1"
												class="table table-hover display  pb-30">
												<thead>
													<tr>
														<th>ลำดับ</th>
														<th>ชื่อ</th>
														<th>รถ</th>
														<th>email</th>
														<th>เงืนที่ต้องจ่าย</th>
														<th>งวดที่เหลือ</th>
														<th>งวดทั้งหมด</th>
														<th>จ่ายผ่าน PayPal</th>
													</tr>
												</thead>
												<tfoot>
													<tr>
														<th>ลำดับ</th>
														<th>ชื่อ</th>
														<th>รถ</th>
														<th>email</th>
														<th>เงืนที่ต้องจ่าย</th>
														<th>งวดที่เหลือ</th>
														<th>งวดทั้งหมด</th>
														<th>จ่ายผ่าน PayPal</th>
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
														<td ><a class="btn btn-primary btn-sm" 
															onclick="gotohos122('<%=list.get(i).getGaId()%>')">จ่ายเงิน</a></td>
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
	<jsp:include page="../../Template/footer.jsp"></jsp:include>

</body>

</html>
