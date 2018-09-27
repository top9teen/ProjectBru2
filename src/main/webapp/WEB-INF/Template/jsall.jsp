<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	
	<script type="text/javascript">
	$(document).ready(function() {
		var vvvde = document.getElementById("bbb");
		anElement = new AutoNumeric("#salary");
		anElement = new AutoNumeric("#salary2");
		 $('input[type="radio"]').click(function () {
		        if ($(this).attr("value") == "2") {
		            $(".box").hide('slow');
		            vvvde.value ="2";
		        }
		        if ($(this).attr("value") == "1") {
		            $(".box").show('slow');
		            vvvde.value ="1";
		            
		        }
		        
		 });     
		
	});
function myFunctionck() {
		
		var checkbox4 = document.getElementById("checkbox4");
		var Incheckbox4pk = document.getElementById("Incheckbox4pk");
		
		if (checkbox4.checked == true){
			Incheckbox4pk.disabled = false;
			    } else {
			    	Incheckbox4pk.disabled = true;
			    }
			}
		
	
	function fncSubmit2() {
		var checkbox1 = document.getElementById("checkbox1");
		var checkbox2 = document.getElementById("checkbox2");
		var checkbox3 = document.getElementById("checkbox3");
		var checkbox4 = document.getElementById("checkbox4");
	
		
		var Incheckbox1 = document.getElementById("Incheckbox1");
		var Incheckbox2 = document.getElementById("Incheckbox2");
		var Incheckbox3 = document.getElementById("Incheckbox3");
		var Incheckbox4 = document.getElementById("Incheckbox4");
		var Incheckbox4pk = document.getElementById("Incheckbox4pk");
		
		 if ((checkbox1.checked == false) && (checkbox2.checked == false) && (checkbox3.checked == false) && (checkbox4.checked == false) ){
			 alert(' กรุณา เลือก อย่างน้อย 1 ข้อ');
				return false;
			    } 
		 if (checkbox1.checked == true ){
			 Incheckbox1.value ="ปิดสินเชื่อสถาบันการเงินอื่น (เช่น บัตรเครดิต สินเชื่อบุคคล รถยนต์ บ้าน)";
				
			    } 
		 if (checkbox2.checked == true ){
			 Incheckbox2.value ="ปิดหนี้สินเชื่ออื่นๆที่ไม่ใช่สถาบันการเงิน (เช่น ขายฝาก / จำนองกับบุคคลภายนอก)";
				
			    } 
		 if (checkbox3.checked == true ){
			 Incheckbox3.value ="ปิดหนี้ธุรกิจ / SME / กิจการ / OD";
				
			    } 
		 if (checkbox4.checked == true ){
			 Incheckbox4.value = Incheckbox4pk.value;
				
			    } 
		 var fNameTH = document.getElementById('fNameTH').value;
			var lNameTH = document.getElementById('lNameTH').value;
			if (document.gotopage3.prefix.value == "") {
				alert('กรุณา เลือกคำนำหน้าด้วยครับ');
				document.gotopage3.prefix.focus();
				return false;
			}
			
			if(!fNameTH.match(/^([a-zA-Zก-๙])+$/i))
			{
				alert("กรอกชื่อให้ถูกต้อง");
				document.getElementById('fNameTH').value = "";
				return false;
			}
			if(!lNameTH.match(/^([a-zA-Zก-๙])+$/i))
			{
				alert("กรอกนามสกุลให้ถูกต้อง");
				document.getElementById('lNameTH').value = "";
				return false;
			}
			
			if (document.gotopage3.birthDay.value == "") {
				alert('กรุณา ใส่วันเกิด  ');
				document.gotopage3.birthDay.focus();
				return false;
			}
			if (document.gotopage3.birthMonth.value == "") {
				alert('กรุณา ใส่เดือนเกิด ');
				document.gotopage3.birthMonth.focus();
				return false;
			}
			if (document.gotopage3.birthYear.value == "") {
				alert('กรุณา ใส่ปีเกิด ');
				document.gotopage3.birthYear.focus();
				return false;
			}
			if (document.gotopage3.refID.value == "") {
				alert('กรุณา ใส่เลขประชาชน');
				document.gotopage3.refID.focus();
				return false;
			}
			if (isNaN(document.gotopage3.mobilePhone.value)) {
				alert('กรุณา ใส่เบอร์โทร');
				document.gotopage3.mobilePhone.focus();
				return false;
			}
			if ((document.gotopage3.mobilePhone.value.length < 10)  || (document.gotopage3.mobilePhone.value.length > 10) ) {
				alert('กรุณา ใส่เบอร์โทรให้ครบ');
				document.gotopage3.mobilePhone.focus();
				return false;
			}
			if (document.gotopage3.email.value == "") {
				alert('กรุณา ใส่อีเมลล์');
				document.gotopage3.email.focus();
				return false;
			}
			
			if (document.gotopage3.email.value.indexOf('@')==-1) {
				alert('อีเมล์ของคุณไม่ถูกต้อง');
				document.gotopage3.email.focus();
				return false;
			}
			if (document.gotopage3.email.value.indexOf('.')==-1) {
				alert('อีเมล์ของคุณไม่ถูกต้อง');
				document.gotopage3.email.focus();
				return false;
			}
			
			if (document.gotopage3.availableTime.value == "") {
				alert('กรุณา ใส่เวลาที่ติดต่อได้');
				document.gotopage3.availableTime.focus();
				return false;
			}
			if (document.gotopage3.job.value == "") {
				alert('กรุณา ใส่อาชีพ');
				document.gotopage3.job.focus();
				return false;
			}
			if (document.gotopage3.salary.value == "") {
				alert('กรุณา ใส่เงินเดือน');
				document.gotopage3.salary.focus();
				return false;
			}
			if (document.gotopage3.yearOfService.value == "") {
				alert('กรุณา ใส่ปีที่ทำงาน');
				document.gotopage3.yearOfService.focus();
				return false;
			}
			if (document.gotopage3.monthOfService.value == "") {
				alert('กรุณา ใส่เดือนที่ทำงาน');
				document.gotopage3.monthOfService.focus();
				return false;
			}
			if(!checkID(document.gotopage3.refID.value)){
				alert('รหัสประชาชนไม่ถูกต้อง');
				return false;
			}
			
			var propertyProjectName = document.getElementById('propertyProjectName').value;
			var fname2 = document.getElementById('fname2').value;
			var lname2 = document.getElementById('lname2').value;
			
			if (!propertyProjectName.match(/^([ก-๙])+$/i)) {
				alert('กรุณาใส่ชื่อบ้านภาษาไทยเท่านั้น');
				document.gotopage3.propertyProjectName.focus();
				return false;
			}
			
			if (document.gotopage3.province.value == "") {
				alert('กรุณาเลือกจังหวัด');
				document.gotopage3.province.focus();
				return false;
			}
			
			if (document.gotopage3.amphur.value == "") {
				alert('กรุณาเลือกอำเภอ');
				document.gotopage3.amphur.focus();
				return false;
			}
			if (document.gotopage3.district.value == "") {
				alert('กรุณาเลือกตำบล');
				document.gotopage3.district.focus();
				return false;
			}
			if(document.gotopage3.Radio.value == "1"){
				// ck ผู้ร่วมกู้
				if (document.gotopage3.prefix2.value == "") {
					alert('กรุณาเลือกคำนำหน้า');
					document.gotopage3.prefix2.focus();
					return false;
				}
				if (!fname2.match(/^([a-zA-Zก-๙])+$/i)) {
					alert('กรุณาใส่ชือ');
					document.gotopage3.fname2.focus();
					return false;
				}
				if (!lname2.match(/^([a-zA-Zก-๙])+$/i)) {
					alert('กรุณาใส่นามสกุล');
					document.gotopage3.lname2.focus();
					return false;
				}
				if (document.gotopage3.birthDay2.value == "") {
					alert('กรุณาเลือกวันเกิด');
					document.gotopage3.birthDay2.focus();
					return false;
				}
				if (document.gotopage3.birthMonth2.value == "") {
					alert('กรุณาเลือกเดือนเกิด');
					document.gotopage3.birthMonth2.focus();
					return false;
				}
				if (document.gotopage3.birthYear2.value == "") {
					alert('กรุณาเลือกปีเกิด');
					document.gotopage3.birthYear2.focus();
					return false;
				}
				if (isNaN(document.gotopage3.talaphone2.value)) {
					alert('กรุณาใส่เบอร์โทร');
					document.gotopage3.talaphone2.focus();
					return false;
				}
				
				if ((document.gotopage3.talaphone2.value.length < 10)  || (document.gotopage3.talaphone2.value.length > 10) ) {
					alert('กรุณา ใส่เบอร์โทรให้ครบ');
					document.gotopage3.talaphone2.focus();
					return false;
				}
				
				if (document.gotopage3.email2.value == "") {
					alert('กรุณาใส่ Email');
					document.gotopage3.email2.focus();
					return false;
				}
				if (document.gotopage3.job2.value == "") {
					alert('กรุณาใส่ อาชีพ');
					document.gotopage3.job2.focus();
					return false;
				}
				if (document.gotopage3.salary2.value == "") {
					alert('กรุณาใส่เงินเดือน');
					document.gotopage3.salary2.focus();
					return false;
				}
				if (document.gotopage3.yearOfService2.value == "") {
					alert('กรุณาใส่ปีที่ทำงาน');
					document.gotopage3.yearOfService2.focus();
					return false;
				}
				if (document.gotopage3.monthOfService2.value == "") {
					alert('กรุณาใส่เดือนที่ทำงาน');
					document.gotopage3.monthOfService2.focus();
					return false;
				}
				
				
				if (document.gotopage3.email2.value.indexOf('@')==-1) {
					alert('อีเมล์ของคุณไม่ถูกต้อง');
					document.gotopage3.email2.focus();
					return false;
				}
				if (document.gotopage3.email2.value.indexOf('.')==-1) {
					alert('อีเมล์ของคุณไม่ถูกต้อง');
					document.gotopage3.email2.focus();
					return false;
				}
			
			}
		
			var formregiterBean2 = {
					"foGroupType" : $('#foGroupType').val(),
					"foCarMake" : $('#foCarMake').val(),
					"foCarMake2" : $('#foCarMake2').val(),
					"foLessmoney" : $('#foLessmoney').val(),
					"foLessyear" : $('#foLessyear').val(),
					"foTypebank" : $('#foTypebank').val(),
					"foCheckbox1" : $('#Incheckbox1').val(),
					"foCheckbox2" : $('#Incheckbox2').val(),
					"foCheckbox3" : $('#Incheckbox3').val(),
					"foCheckbox4" : $('#Incheckbox4').val(),
					"foPrefix" : $('#foPrefix').val(),
					"foFNameTH" : $('#fNameTH').val(),
					"foLNameTH" : $('#lNameTH').val(),
					"foBirthDay" : $('#birthDay').val(),
					"foBirthMonth" : $('#birthMonth').val(),
					"foBirthYear" : $('#birthYear').val(),
					"foRefID" : $('#refID').val(),
					"foMobilePhone" : $('#foMobilePhone').val(),
					"foEmail" : $('#foEmail').val(),
					"foAvailableTime" : $('#foAvailableTime').val(),
					"foJob" : $('#foJob').val(),
					"foSalary" : $('#salary').val(),
					"foYearOfService" : $('#foYearOfService').val(),
					"foMonthOfService" : $('#foMonthOfService').val(),
					"foBureauPaidedStatusPaid" : $('#bureauPaidedStatusPaid').val(),
					"foPropertyProjectName" : $('#propertyProjectName').val(),
					"foProvince" : $('#province').val(),
					"foAmphur" : $('#amphur').val(),
					"foDistrict" : $('#district').val(),
					"foRadio" : $('#bbb').val(),
					"foReMonny" : $('#remon').val(),
					"mePrefix2" : $('#prefix2').val(),
					"meFname2" : $('#fname2').val(),
					"meLname2" : $('#lname2').val(),
					"meBirthDay2" : $('#birthDay2').val(),
					"meBirthMonth2" : $('#birthMonth2').val(),
					"meBirthYear2" : $('#birthYear2').val(),
					"meTalaphone2" : $('#talaphone2').val(),
					"meEmail2" : $('#email2').val(),
					"meJob2" : $('#job2').val(),
					"meSalary2" : $('#salary2').val(),
					"meYearOfService2" : $('#yearOfService2').val(),
					"meMonthOfService2" : $('#monthOfService2').val()};
					
					
						 $.ajax({
							type : "POST",
							url : "http://localhost:8090/bank2",
							data : JSON.stringify(formregiterBean2),
							contentType : "application/json; charset=utf-8",
							dataType : "json",
							success : function(msg) {
								console.log('Success')
								
			
							}
						}); 
						
						$.ajax({
							type : "POST",
							url : "bank2333",
							data : JSON.stringify(formregiterBean2),
							contentType : "application/json; charset=utf-8",
							dataType : "json",
							success : function(msg) {
								console.log('Success')
								
			
							}
						
							
						});
					
						
		}
		function checkID(id) 
		{ 
		if(id.length != 13) return false; 
		for(i=0, sum=0; i < 12; i++) 
		sum += parseFloat(id.charAt(i))*(13-i); if((11-sum%11)%10!=parseFloat(id.charAt(12))) 
		return false; return true;}
		
	
</script>
	
	