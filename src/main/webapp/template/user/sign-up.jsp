<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<c:import url="../common/header.jsp"></c:import>
<link href="../static/css/style.css" rel="stylesheet">
</head>
<body>

<!--  container  -->
<div class="container-md mt-5">
		<div class="col-md-6 mx-auto">
			<div class="card mb-5">
				<div class="card-header">Fill All Information</div>
				<div class="card-body">
					<c:if test="${ not empty signupOk }">
						<c:choose>
							<c:when test="${ signupOk }">
								<div class="alert alert-success" role="alert">Successfully
									created account.</div>

							</c:when>
							<c:otherwise>
								<div class="alert alert-danger" role="alert">Account creation
									is failed.</div>
							</c:otherwise>
						</c:choose>
					</c:if>
					<form action="user" method="post">
						<input type="hidden" name="mode" value="SIGNUP">
						<div class="mb-3">
							<label for="firstname" class="form-label">FirstName</label> <input
								type="text" class="form-control" id="firstname" name="firstname"
								required="required">
						</div>
						<div class="mb-3">
							<label for="lastname" class="form-label">LastName</label> <input
								type="text" class="form-control" id="lastname" name="lastname"
								required="required">
						</div>
						
						<div class="mb-3">
							<label for="username" class="form-label">Username</label> <input
								type="text" class="form-control" id="username" name="username"
								required="required">
						</div>
						<div class="mb-3">
							<label for="email" class="form-label">Email</label> <input
								type="text" class="form-control" id="email" name="email"
								required="required">
						</div>
						<div class="mb-3">
							<label for="password" class="form-label">Password</label> <input
								type="password" class="form-control" id="password" name="password"
								required="required">
						</div>
						
						<button type="submit" class="btn btn-primary float-end">Create</button>
						<p style="clear : both; font-size: 0.8rem;">Already has an account? Sign In <a href="login" class="text-decoration-none text-muted">here</a></p>
					</form>
				</div>
			</div>
		</div>
	</div>
	
	<c:import url="../common/footer.jsp"></c:import>

</body>
</html>