<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>footer</title>
<style type="text/css">
#footer {
	position: absolute;
	width: 100%;
	height: auto; /* Height of the footer */
	background: fixed;
}
</style>
<script>
$('.numericOnly').bind( 'keydown.DT', function(event) {
    // Perform All cleanup operations
     if(event.shiftKey){
           return false;
     }                
     var asciiValue = event.keyCode;
     if(asciiValue == 46 || asciiValue == 8 || asciiValue == 9 || asciiValue == 13 || asciiValue == 27 ||
          (asciiValue >= 33 && asciiValue <= 40) || (asciiValue >= 48 && asciiValue <= 57)||
          (asciiValue >= 96 && asciiValue <= 105) || asciiValue == 45 || asciiValue == 144
          || (asciiValue >= 112 && asciiValue <= 123)){
                 return true;
     }else{
                 return false;
     }

});

});
</script>
</head>
<body>
	<div align="center" id="footer">
		<hr>
		&copy; 2014 <font color="red" style="text-decoration: blink;">All
			Rights Reserved to Bachelors</font>
	</div>
</body>
</html>