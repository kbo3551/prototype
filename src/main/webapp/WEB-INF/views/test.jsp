<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Ryeong
  Date: 2022-04-29
  Time: 오전 2:06
  To change this template use File | Settings | File Templates.
--%>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<script>
    $( document ).ready(function() {
        $('#test').on('click', function() {
            let params ={};
            params.id = $("#id").val();
            params.pw = $("#pw").val();
            let val = validate( params );
            val ? alert('JqueryTEST완료') : console.log('test완료');
        });
    });
    function validate(params) {

        if(NullVal(params.id)){
            alert('ID를 입력해주세요.');
            return false;
        } if(NullVal(params.pw)){
            alert('PW를 입력해주세요.');
            return false;
        } if(params.id.length > 5 ){
            alert('ID길이를 줄여주세요');
            return false;
        } if(params.pw.length > 5 ){
            alert('PW길이를 줄여주세요');
            return false;
        }
        return true;
    };

function NullVal(param){
    if ((null == param) || ('' == param) || ( param ===undefined) || ( param=== "undefined" ) ) {
        return true;
    }
    return false;
}
</script>
<html>
<head>
    <title>Title</title>
    <meta charset="utf-8">
    <link rel="stylesheet" type="text/css" href="Ry/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="Ry/bootstrap/css/bootstrap-grid.css">
</head>
<style>
    body{
        text-align: center;
    }
</style>
<body>
<h1 class="card-header">실험공간</h1>
<div class="card-body">
    <form>
        <div class="mb-3">
            <input id="id">
        </div>
        <div class="mb-3">
            <input id="pw">
        </div>
        <div class="mb-3">
            <button class="btn-primary" id="test" type="button">테스트용</button>
        </div>
    </form>
  <p>권석기 테스트 커밋테스트</p>
</div>
<c:import url="jstlTest.jsp"/>
</body>

</html>
