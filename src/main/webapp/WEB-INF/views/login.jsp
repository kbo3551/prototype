<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<script>
    $( document ).ready(function() {
        $('#login').on('click', function() {
            let params ={};
            params.id = $('#id').val();
            params.pw = $('#pw').val();
            let val = validate( params );
            val ? alert('로그인 성공') : console.log('로그인실패');
        });
    });
function validate(params) {
    if(NullVal(params.id)){
        alert('ID를 입력해주세요.');
        return false;
    } if(NullVal(params.pw)){
        alert('PW를 입력해주세요.');
        return false;
    } if(params.id.length > 20 ){
        alert('ID길이를 줄여주세요');
        return false;
    } if(params.pw.length > 20 ){
        alert('PW길이를 줄여주세요');
        return false;
    }
    return true;
};

function NullVal(param){
    if ((null == param) || ('' == param) || ( param === undefined) || ( param === "undefined" ) ) {
        return true;
    }
    return false;
}
</script>
<html>
<head>
    <title>Title</title>
    <meta charset="utf-8">
    <link rel="stylesheet" type="text/css" href="resources/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="resources/bootstrap/css/bootstrap-grid.css">
    <link rel="stylesheet" type="text/css" href="resources/DataTables/datatables.min.css"/>

</head>
<style>
    body{
        text-align: center;
    }
</style>
<body>
<h1 class="card-header">로그인</h1>
<div class="card-body">
    <form>
        <div class="mb-3">
            <input id="id">
        </div>
        <div class="mb-3">
            <input id="pw">
        </div>
        <div class="mb-3">
            <button class="btn-primary" id="login" type="button">로그인</button>
            <button class="btn-primary" id="signUp" type="button">회원가입</button>
        </div>
    </form>
</div>
</body>

</html>
