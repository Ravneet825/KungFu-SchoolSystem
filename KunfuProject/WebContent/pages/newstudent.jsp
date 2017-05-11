<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Stephanos Kung Fu Club | New Student</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" href="../layout/styles/layout.css"
	type="text/css" />
<link rel="stylesheet" href="../layout/styles/jquery-ui.css"
	type="text/css" />
<script type="text/javascript" src="../layout/scripts/jquery.min.js"></script>
<script type="text/javascript" src="../layout/scripts/jquery.ui.min.js"></script>
</head>
<body id="top">
	<div class="wrapper row1">
		<div id="header" class="clear">
			<div class="fl_left">
				<h1>
					<a href="../index.html">Stephanos Kung Fu Club</a>
				</h1>
			</div>

			<div id="topnav">
				<ul>
					<li><a href="../index.html">Home</a></li>
					<li class="active"><a href="newstudent.jsp">New Student</a></li>
					<li><a href="StudentInfo.jsp">StudentInfo</a></li>
					<li><a href="Attend">Attendance</a></li>
					<li><a href="Fees.jsp">Fees</a></li>
					<li><a href="PurposeOfFees.jsp">Purpose Of Fees</a></li>
					<li><a href="a.jsp">Assign Rank</a></li>
					<li><a href="ab.jsp">Rank</a></li>
					<li ><a href="rep.jsp">Reports</a></li>
				</ul>
			</div>
		</div>
	</div>
	<!-- ####################################################################################################### -->
	<div class="wrapper row3">
		<div id="container" class="clear" >
			<!-- ####################################################################################################### -->
			<div id="content">
				<%
					String message = (String) request.getAttribute("message");
					String studentID = (String) request.getAttribute("studentId");
				%>
				<h1>Welcome To Club.</h1>
				<h2>Please complete below form and Submit to become member of
					the Club</h2>
				<div id="studentdiv">
					<div id="result" style="color: green">
						<%
							if (message != null && studentID != null) {
						%>
						<%=message%>
						
						<%
							}
						%>
					</div>
					<form id="studentForm" action="HelloWorld" method="GET">
						<div id="studentInfo">
							<table>
								<tr>
									<td><label for="fname"><small>First Name</small></label></td>
									<td><input type="text" name="fname" id="fname" value=""
										size="22" /></td>
								</tr>
								<tr>
									<td><label for="lname"><small>Last Name</small></label></td>
									<td><input type="text" name="lname" id="lname" value=""
										size="22" /></td>
								</tr>
								<tr>
									<td><label for="dob"><small>Date Of Birth</small></label></td>
									<td><input type="text" name="dob" id="dob" value=""
										size="22" /></td>
								</tr>
								<tr>
									<td><label for="joiningDate"><small>Joining
												Date</small></label></td>
									<td><input type="text" name="joiningDate" id="joiningDate"
										value="" size="22" /></td>
								</tr>
								<tr>
									<td><label for="mobile"><small>Mobile</small></label></td>
									<td><input type="number" name="mobile" id="mobile"
										value="" size="22" /></td>
								</tr>
								<tr>
									<td><label for="email"><small>Email ID</small></label></td>
									<td><input type="email" name="email" id="email" value=""
										size="35" width="100%" /></td>
								</tr>
								<tr>
									<td><label for="addressl1"><small>Apartment
												& Street</small></label></td>
									<td><input type="text" name="addressl1" id="addressl1" /></td>
								</tr>
								<tr>
									<td><label for="city"><small>City</small></label></td>
									<td><input type="text" name="city" id="city" /></td>
								</tr>
								<tr>
									<td><label for="province"><small>Province</small></label></td>
									<td><input type="text" name="province" id="province"
										value="" size="22" /></td>
								</tr>
								<tr>
									<td><label for="country"><small>Country</small></label></td>
									<td><input type="text" name="country" id="country"
										value="" size="22" /></td>
								</tr>
								<tr>
									<td><label for="postalcode"><small>Postal
												Code</small></label></td>
									<td><input type="text" name="postalcode" id="postalcode"
										value="" size="22" /></td>
								</tr>
								<tr>
									<td><label for="isadult"><small>Age Below
												18</small></label></td>
									<td><input type="checkbox" id="isadult"></td>
								</tr>
							</table>
						</div>
						<div id="parentInfo" style="display: none;">
							<label for="parentdatatable">Parent Information</label>
							<table id="parentdatatable">
								<tr>
									<td><label for="fatherName"><small>Father
												Name</small></label></td>
									<td><input type="text" name="fatherName" id="fatherName"
										value="" size="22" /></td>
								</tr>
								<tr>
									<td><label for="fathermobile"><small>Father
												Mobile</small></label></td>
									<td><input type="number" name="fathermobile"
										id="fathermobile" value="" size="22" /></td>
								</tr>
								<tr>
									<td><label for="fatheremail"><small>Father
												Email</small></label></td>
									<td><input type="email" name="fatheremail"
										id="fatheremail" value="" size="35" /></td>
								</tr>
								<tr>
									<td><label for="motherName"><small>Mother
												Name</small></label></td>
									<td><input type="text" name="motherName" id="motherName"
										value="" size="22" /></td>
								</tr>
								<tr>
									<td><label for="mothermobile"><small>Mother
												Mobile</small></label></td>
									<td><input type="number" name="mothermobile"
										id="mothermobile" value="" size="22" /></td>
								</tr>
								<tr>
									<td><label for="motheremail">Mother Email</label></td>
									<td><input type="email" name="motheremail"
										id="motheremail" value="" size="35" /></td>
								</tr>
								<tr>
									<td><label for="isparentStudent">Is your parent a
											student.</label></td>
									<td><input type="checkbox" id="isparentStudent"></td>
								</tr>
							</table>
							<table id="parentsid" style="display: none">
								<tr>
									<td><label for="sidMother">Student ID of Mother.</label></td>
									<td><input type="text" name="sidMother" id="sidMother"></td>
								</tr>
								<tr>
									<td><label for="sidFather">Student ID of Father.</label></td>
									<td><input type="text" name="sidFather" id="sidFather"></td>
								</tr>
							</table>

						</div>
						<div id="submitTable">
							<table>
								<tr>
									<td><input name="submit" type="submit" id="submit"
										value="Submit Form" /></td>

									<td><input name="reset" type="reset" id="reset"
										tabindex="5" value="Reset Form" /></td>
								</tr>
							</table>
						</div>
						<input type="hidden" id="isadultFlag" value="" name="isadult"></input>
						<input type="hidden" id="isparentStudentFlag" value=""
							name="isparentStudent"></input> <input type="hidden"
							value="insert" name="flag"></input>
					</form>
				</div>
			</div>

			<!-- ####################################################################################################### -->
		</div>
	</div>
	<div class="wrapper">
  <div id="copyright" class="clear">
    <p class="fl_left">Copyright &copy; 2017 - All Rights Reserved - <a href="#">Stephanos Kung Fu Club</a></p>
    <p class="fl_right">Website by <a target="_blank" href="#" title="">Jyot, Nidhi, Ravneet, Vaibhavi</a></p>
  </div>
</div>

	<script>
		$(function() {

			$('#joiningDate').datepicker();
			$('#dob').datepicker();

		});
		// Attach a submit handler to the form
		$("#isadult").click(function(event) {
			if ($("#isadult").is(':checked')) {
				$("#parentInfo").css("display", "block");
				("#isadultFlag").val(false);
			} else {
				$("#parentInfo").css("display", "none");
				("#isadultFlag").val(true);
			}
		});
		$("#isparentStudent").click(function(event) {
			if ($("#isparentStudent").is(':checked')) {
				$("#parentsid").css("display", "block");
				("#isparentStudentFlag").val(true);
			} else {
				$("#parentsid").css("display", "none");
				("#isparentStudentFlag").val(false);
			}
		});
	</script>

</body>
</html>