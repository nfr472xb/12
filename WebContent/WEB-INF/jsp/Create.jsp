<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="<c:url value="/resources/css/layui.css" />" rel="stylesheet" type="text/css">
<link href="<c:url value="/resources/css/semantic.min.css" />" rel="stylesheet" type="text/css">
<link href="<c:url value="/resources/css/animate.css" />" rel="stylesheet" type="text/css">
<link href="<c:url value="/resources/css/mystyle.css" />" rel="stylesheet" type="text/css">

<title>Stock Create</title>
</head>
<body class="layui-layout-body  animated fadeIn" id="layuiContainer">
    <div class="layui-layout layui-layout-admin">
        <div class="layui-header">
            <div class="layui-logo"><a href="${pageContext.request.contextPath}/welcome">big camera</a></div>
            <!-- 头部区域（可配合layui已有的水平导航） -->
            <ul class="layui-nav layui-layout-left">
            </ul>
            <ul class="layui-nav layui-layout-right">
            </ul>
        </div>

        <div class="layui-side layui-bg-black  animated fadeInLeft">
            <div class="layui-side-scroll">
                <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
                <ul class="layui-nav layui-nav-tree" lay-filter="test">
                    <li class="layui-nav-item layui-nav-itemed">
                        <a class="" href="${pageContext.request.contextPath}/overview">所有商品</a>
                    </li>
                    <li class="layui-nav-item layui-nav-itemed">
                        <a class="" href="${pageContext.request.contextPath}/category">商品分類</a>
                    </li>
					<li class="layui-nav-item layui-nav-itemed">
                        <a class="" href="${pageContext.request.contextPath}/section">部門分類</a>
                    </li>
                    <li class="layui-nav-item layui-nav-itemed">
                        <a class="" href="${pageContext.request.contextPath}/create">新增商品</a>
                    </li>
                </ul>
            </div>
        </div>



        <div class="layui-body">
            <!-- 内容主体区域 -->
            <div class="layui-row" style="padding: 15px;">
                <fieldset class="layui-elem-field layui-field-title animated slideInDown" style="margin-top: 20px;">
                    <legend>新增商品</legend>
                </fieldset>
                <div  class="animated fadeInUp">
                <form:form class = "myform" name="form" modelAttribute="stock" action="${pageContext.request.contextPath}/create" method="post">
                    <form:input type="hidden" name="stockId" path="stockId" />

                    <div class="layui-form-item">
                         <form:label path="stockBrand" class="layui-form-label">商品名稱</form:label>
                         <div class="layui-input-inline">
                            <form:input type="text" class="layui-input" name="stockName" path="stockName" placeholder="請輸入" lay-verify="required" />
                        </div>
                    </div>

                    <div class="layui-form-item">
                        <form:label path="stockBrand" class="layui-form-label">商品品牌</form:label>
                        <div class="layui-input-inline">
                            <form:input type="text" class="layui-input" name="stockBrand" path="stockBrand" placeholder="請輸入" lay-verify="required" />
                        </div>
                    </div>

                    <div class="layui-form-item">
                        <form:label path="stockCategory" class="layui-form-label">商品類別</form:label>
                        <div class="layui-input-inline">
                            <form:input type="text" class="layui-input" name="stockCategory" path="stockCategory" placeholder="請輸入" lay-verify="required" />
                        </div>
                    </div>
                    
                    <div class="layui-form-item">
                        <form:label path="stockSection" class="layui-form-label">所屬部門</form:label>
                        <div class="layui-input-inline">
                            <form:input type="text" class="layui-input" name="stockSection" path="stockSection" placeholder="請輸入" lay-verify="required" />
                        </div>
                    </div>
                    
                    <div class="layui-form-item">
                        <form:label path="stockNum" class="layui-form-label">商品數量</form:label>
                        <div class="layui-input-inline">
                            <form:input type="text" class="layui-input" name="stockNum" path="stockNum" placeholder="請輸入" lay-verify="required" />
                        </div>
                    </div>
                    
					<div class="layui-form-item">
                        <form:label path="stockMin" class="layui-form-label">最低庫存量</form:label>
                        <div class="layui-input-inline">
                            <form:input type="text" class="layui-input" name="stockMin" path="stockMin" placeholder="請輸入" lay-verify="required" />
                        </div>
                    </div>

                    <button type="submit" class="layui-btn">送出</button>
                    <button type="reset" class="layui-btn">清除</button>
                    <button type="button" onclick="goBack()" class="layui-btn">回上一頁</button>
                </form:form>
                </div>
            </div>
        </div>

        <div class="layui-footer">
            <!-- 底部固定区域 -->
            Big Camera © 2018 - All right reserved.
        </div>
    </div>
    <script src="<c:url value=" /resources/js/layui.js " />"></script>
    <script>
        function goBack() {
            window.history.back();
        }
    </script>
</body>
</html>