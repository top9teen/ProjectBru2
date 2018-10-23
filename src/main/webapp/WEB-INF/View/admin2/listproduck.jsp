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
	<!--Preloader-->
	<div class="preloader-it">
		<div class="la-anim-1"></div>
	</div>
	<!--/Preloader-->
	<div class="wrapper  theme-5-active pimary-color-blue">
		
			<%
		List<FormregiterBean> list = null;
		Integer a = 0;
	%>
	<%
		list = (List<FormregiterBean>) request.getSession().getAttribute("listUser");
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
						<li><a >หน้าแรก</a></li>
						<li><a ><span>รายการสินเชื่อ</span></a></li>
						
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
												<table id="datable_2" class="table table-hover display  pb-30" >
											
												<thead>
													<tr>
														<th>ลำดับ</th>
														<th>คำนำหน้า</th>
														<th>ชื่อ</th>
														<th>นามสกุล</th>
														<th>email</th>
														<th>รุ่นรถ</th>
														<th>ยี่ห่อรถ</th>
														<th>จำนวนเงินที่ต้องการ</th>
														<th>วันที่สมัคร</th>
														<th>ดูรายละเอียด</th>
													</tr>
												</thead>
												<tfoot>
													<tr>
														<th>ลำดับ</th>
														<th>คำนำหน้า</th>
														<th>ชื่อ</th>
														<th>นามสกุล</th>
														<th>email</th>
														<th>รุ่นรถ</th>
														<th>ยี่ห่อรถ</th>
														<th>จำนวนเงินที่ต้องการ</th>
														<th>วันที่สมัคร</th>
														<th>ดูรายละเอียด</th>
													</tr>
												</tfoot>
												<tbody>
												<%
						for (int i = 0; i < list.size(); i++) {
					%>
					
													<tr>
														<td><%=a = a + 1%></td>
														<td><%=list.get(i).getFoPrefix() %></td>
														<td><%=list.get(i).getFoFNameTH() %></td>
														<td><%=list.get(i).getFoLNameTH() %></td>
														<td><%=list.get(i).getFoEmail() %></td>
														<td><%=list.get(i).getFoCarMake() %></td>
														<td><%=list.get(i).getFoCarMake2() %></td>
														<td><%=list.get(i).getFoLessmoney() %></td>
														<td><%=list.get(i).getFoDate() %></td>
														<td><button onclick="gotoUpdate('<%=list.get(i).getFoId()%>')" class="btn btn-success btn-icon-anim btn-square">เลือก</button></td>
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
				<!-- Row2 -->
				
					<div class="row"  style="display: none;" id="Forms2">
					<div class="col-md-12">
					<div  class="panel panel-default card-view">
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
		function gotoUpdate(filter) {
			document.getElementById("regid").value = filter;
			$("#Forms2").show('slow');
			var simpleTestBean = {
				"xxx" : $('#regid').val()
			};

			$.ajax({
						type : "POST",
						url : "/FFF",
						data : JSON.stringify(simpleTestBean),
						contentType : "application/json; charset=utf-8",
						dataType : "json",
						success : function(msg) {
							console.log('Success')
							$('#fNameTH').text(msg.foPrefix+"  "+msg.foFNameTH);
							$('#lNameTH').text(msg.foLNameTH);
							$('#mobilePhone').text(msg.foMobilePhone);
							$('#birthDay').text( msg.foBirthDay+"/"+ msg.foBirthMonth+"/"+msg.foBirthYear);
							$('#refID').text(msg.foRefID);
							$('#email').text(msg.foEmail);
							$('#propertyProjectName').text( msg.foPropertyProjectName);
							$('#district').text(msg.foDistrict);
							$('#amphur').text( msg.foAmphur);
							$('#province').text(msg.foProvince);
							$('#job').text(msg.foJob);
							$('#salary').text( msg.foSalary + ' บาท');
							$('#yearOfService').text(msg.foYearOfService + ' ปี  '+msg.foMonthOfService+ ' ปี  ');
							$('#groupType').text(msg.foGroupType);
							$('#carMake').text( msg.foCarMake);
							$('#carMake2').text(msg.foCarMake2);
							$('#lessmoney').text( msg.foLessmoney);
							$('#lessyear').text( msg.foLessyear + ' ปี');
							$('#bureauPaidedStatusPaid').text( msg.foBureauPaidedStatusPaid);
							$('#availableTime').text(msg.foAvailableTime);
							$('#checkbox1').text(msg.foCheckbox1);
							$('#checkbox2').text(msg.foCheckbox2);
							$('#checkbox3').text(msg.foCheckbox3);
							$('#checkbox4').text(msg.foCheckbox4);
							
							if (msg.foRadio == '1') {
								document.getElementById("regid").value = filter;
								var simpleTestBean = {
									"xxx" : $('#regid').val()
								};
								$
										.ajax({
											type : "POST",
											url : "/MFD",
											data : JSON
													.stringify(simpleTestBean),
											contentType : "application/json; charset=utf-8",
											dataType : "json",
											success : function(msg2) {
									
												$('#fNameTH2').text(
														msg2.mePrefix2+"  "+msg2.meFname2);
												$('#lNameTH2')
														.text(
																
																		 msg2.meLname2);
												$('#mobilePhone2')
														.text(
															 msg2.meTalaphone2);
												$('#birthDay2')
														.text(
																' วันเกิดที่   '
																		+ msg2.meBirthDay2 +' เดือน   '
																		+ msg2.meBirthMonth2+' ปี   '
																		+ msg2.meBirthYear2);
												
												$('#email2')
														.text(
																 msg2.meEmail2);
												$('#job2')
														.text(
																 msg2.meJob2);
												$('#salary2')
														.text(
																 msg2.meSalary2
																		+ ' บาท ');
												$('#yearOfService2')
														.text(
															
																	msg2.meYearOfService2
																		+ '  ปี  '+ msg2.meMonthOfService2
																		+ ' เดือน  ');
												$("#Forms2").show('slow');
												
											}
										});

							} else {
								$('#fNameTH2').text("-");
								$('#lNameTH2').text("-");
								$('#mobilePhone2').text("-");
								$('#birthDay2').text("-");
								$('#email2').text("-");
								$('#job2').text("-");
								$('#salary2').text("-");
								$('#yearOfService2').text("-");
								$("#Forms2").show('slow');
								
							}

						}
					});

		}

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
