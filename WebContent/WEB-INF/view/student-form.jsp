<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
	<title>Student Registration Form</title>
</head>

<body>
	<form:form action="processForm" modelAttribute="student">
	
		First Name: <form:input path="firstName" />
		<br><br>
		
		Last Name: <form:input path="lastName" />
		<br><br>
		
		Country : <%-- <form:select path="country"> <!-- On submit, spring will called student.setCountry() -->
		<form:options items="${student.countryOptions}" />
		</form:select> --%>
		<form:select path="country"> 
 			<form:options items="${theCountryOptions}" />
		</form:select>
		<br><br>
		
		Favorite Language: 
		
		Java <form:radiobutton path="favoriteLanguage" value="Java" /> <!-- On submit, student.setFavoriteLanguage() is called -->
		C++ <form:radiobutton path="favoriteLanguage" value="C++" />
		C <form:radiobutton path="favoriteLanguage" value="C" />
		Scala <form:radiobutton path="favoriteLanguage" value="Scala" />
		
		<br><br>
		
		Operating Systems : 
		
		Linux <form:checkbox path="operatingSystems" value="Ubuntu" />
		MacOS <form:checkbox path="operatingSystems" value="Mac OS" />
		Windows <form:checkbox path="operatingSystems" value="MS Windows" />
		
		<br><br>
		<input type="submit" value="Submit" />
	</form:form>
</body>

</html>