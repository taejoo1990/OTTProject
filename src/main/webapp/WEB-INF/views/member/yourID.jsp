<%@ page contentType="text/html;charset=utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.net.URLDecoder"%>
<!DOCTYPE html>
<html lang="JP">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
<style>
* {
	box-sizing: border-box;
}

.yourID {
	width: 400px;
	height: 500px;
	display: flex;
	flex-direction: column;
	align-items: center;
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	border: 1px solid rgb(89, 117, 196);
	border-radius: 10px;
}

.input-field {
	width: 300px;
	height: 40px;
	border: 1px solid rgb(89, 117, 196);
	border-radius: 5px;
	padding: 0 10px;
	margin-bottom: 10px;
}

label {
	width: 300px;
	height: 30px;
	margin-top: 4px;
}

button {
	background-color: rgb(89, 117, 196);
	color: white;
	width: 300px;
	height: 50px;
	font-size: 17px;
	border: none;
	border-radius: 5px;
	margin: 20px 0 30px 0;
}

.title {
	font-size: 50px;
	margin: 40px 0 30px 0;
}

.msg {
	height: 30px;
	text-align: center;
	font-size: 16px;
	color: red;
	margin-bottom: 20px;
}

.sns-chk {
	margin-top: 5px;
}
</style>
<title>OTTProject - ID探し結果</title>
</head>
<body>
		<div class="yourID">
			<div class="title">ID探し結果</div>
			<div style="text-align: center;">
				<h3>お客様のIDは</h3>
				<h2 style="color: red;">${result }</h2>
				<h3>です。</h3>
			</div>

			<button id="findPW">パスワード探し</button>
			<button id="moveToLogIn">ログイン</button>

		</div>
			
	<script>
		document.querySelector('#moveToLogIn').addEventListener('click',e=>{
	    	window.location.href = '/login';
	    });
		
		document.querySelector('#findPW').addEventListener('click',e=>{
	    	window.location.href = '';
	    });
	</script>
</body>
</html>