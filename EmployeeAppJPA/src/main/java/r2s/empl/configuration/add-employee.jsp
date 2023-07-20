<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<form action="employee" method="post" id="addEmpForm" name="frm-addEmp">
    <div class="row">
        <div class="col-md-6 offset-md-3">
            <h2>Add a Employee</h2>
            <div class="error"><span></span></div>
            <div class="form-group">
                <label for="fullName">Name:</label>
                <input type="text" class="form-control" id="fullName" placeholder="Enter name" name="fullName">
            </div>

            <label for="gender">Gender:</label>
            <div class="form-check-inline">
                <label class="form-check-label"> <input type="radio" class="form-check-input" name="gender" value="1"
						checked>Male
				</label>
            </div>
            <div class="form-check-inline">
                <label class="form-check-label"> <input type="radio" class="form-check-input" name="gender"
						value="0">Female
				</label>
            </div>

            <div class="form-group">
                <label for="dateOfBirth">Date of birth:</label> <input type="date" class="form-control" id="dateOfBirth" placeholder="Enter date of birth" name="dateOfBirth">
            </div>
            <div class="form-group">
                <label for="dept">Department:</label> <select class="form-control" id="dept" name="dept">
					<option value=" selected disabled hidden">Choose a department</option>
					<option value="marketing">Marketing</option>
					<option value="sales">Phòng Kinh doanh</option>
				</select>
            </div>
        </div>

    </div>

    <div class="row">
        <div class="col-md-6 offset-md-3">
            <button type="submit" id="btn-addEmp" class="btn btn-warning">Add
				Employee</button>
        </div>
    </div>
</form>
<!-- <script src="../resources/js/add-employee.js"></script> -->
<script src="${contextPath}/resources/js/add-employee.js"></script>