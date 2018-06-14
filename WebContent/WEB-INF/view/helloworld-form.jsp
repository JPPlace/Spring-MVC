<!DOCTYPE html>
<html>
<head>
	<title>Hello World- Input Form</title>
	<link rel="stylesheet" type="text/css" 
		  href="${pageContext.request.contextPath}/resources/css/my-test.css">
</head>

<body>
	<form action="processFormVersionThree" method="get">
		<input type="text" name="studentName"
				placeholder="What's your name?" />
				
		<input type="submit" />
		
	</form>
</body>

</html>