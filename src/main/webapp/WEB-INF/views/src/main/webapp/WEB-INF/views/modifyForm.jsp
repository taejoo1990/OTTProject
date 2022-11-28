<%@ page contentType="text/html;charset=utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<%@ page import="java.net.URLDecoder"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
    <style>
        * { box-sizing:border-box; }
        form {
            width:400px;
            height:600px;
            display : flex;
            flex-direction: column;
            align-items:center;
            position : absolute;
            top:50%;
            left:50%;
            transform: translate(-50%, -50%) ;
            border: 1px solid rgb(89,117,196);
            border-radius: 10px;
        }
        .input-field {
            width: 300px;
            height: 40px;
            border : 1px solid rgb(89,117,196);
            border-radius:5px;
            padding: 0 10px;
            margin-bottom: 10px;
        }
        
        label {
            width:300px;
            height:30px;
            margin-top :4px;
        }
        button {
            background-color: rgb(89,117,196);
            color : white;
            width:300px;
            height:50px;
            font-size: 17px;
            border : none;
            border-radius: 5px;
            margin : 20px 0 30px 0;
        }
        .title {
            font-size : 50px;
            margin: 40px 0 30px 0;
        }
        .msg {
            height: 30px;
            text-align:center;
            font-size:16px;
            color:red;
        }
        
        .sns-chk {
            margin-top : 5px; 
        }
    </style>
    <title>Register</title>
</head>
<body>
   <!-- form action="<c:url value="/register/save"/>" method="POST" onsubmit="return formCheck(this)"-->
   <form:form modelAttribute="Customer" id="frm">
    <div class="title">ユーザ情報修正</div>
    <div id="msg" class="msg"><form:errors path="pwd"/></div>  
    <label for="">ID</label>
    <input class="input-field" type="text" name="id" value="${customer.c_id}" readonly="readonly">
    <label for="">パスワード</label>
    <input class="input-field" type="password" name="pwd"  placeholder="パスワード">
    <label for="">パスワード再入力</label>
    <input class="input-field" type="password" name="pwd2" placeholder="再入力してください" onchange="pwCheck()">
    <label for="">名前</label>
    <input class="input-field" type="text" name="name" value="${customer.c_id}">
    <label for="">メール</label>
    <input class="input-field" type="text" name="email" value="${customer.c_mail}">
    <button>修正</button>
   </form:form> 
   <script>
       function pwCheck() {
            let msg ='';
            const frm = document.getElementById("frm");   
            if(frm.pwd.value!==frm.pwd2.value) {　
                setMessage('pwdが一致しません', frm.pwd);
            }else{
            	setMessage('', frm.pwd);
            }
       }
       function setMessage(msg, element){
            document.getElementById("msg").innerHTML = `<i class="fa fa-exclamation-circle"> ${'${msg}'}</i>`;
            if(element) {
                element.select();
            }
       }
       
   </script>
</body>
</html>