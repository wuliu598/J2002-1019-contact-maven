<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<% String path = request.getContextPath(); %>
<% String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";%>

<!DOCTYPE html>
<html lang="en">
<head>
    <base href="<%=basePath%>"/>
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <title>修改用户</title>

    <link rel='stylesheet' href='css/bootstrap.min.css'/>
    <script src='js/jquery-3.3.1.min.js'></script>
    <script src='js/bootstrap.min.js'></script>
</head>

<body>
<div class="container" style="width: 400px;">
    <h3 style="text-align: center;">修改联系人</h3>
    <form action="update" method="post">
        <input type="hidden" name="id" value="${contact.id}">

        <div class="form-group">
            <label for="name">姓名：</label>
            <input value="${contact.name}" type="text" class="form-control" id="name" name="name" readonly="readonly" placeholder="请输入姓名"/>
        </div>

        <div class="form-group">
            <label>性别：</label>
            <input ${contact.gender == 'm' ? "checked" : ""} type="radio" name="gender" value="m"/>男
            <input ${contact.gender == 'f' ? "checked" : ""} type="radio" name="gender" value="f"/>女
        </div>

        <div class="form-group">
            <label for="formatBirthday">生日：</label>
            <input value="${contact.formatBirthday}" type="text" class="form-control" id="formatBirthday" name="formatBirthday" placeholder="请输入生日(yyyy-MM-dd)"/>
        </div>

        <div class="form-group">
            <label for="birthplace">籍贯：</label>
            <select name="birthplace" class="form-control">
                <option value="广州" ${contact.birthplace == "广州" ? "selected" : ""}>广州</option>
				<option value="上海" ${contact.birthplace == "上海" ? "selected" : ""}>上海</option>
                <option value="北京" ${contact.birthplace == "北京" ? "selected" : ""}>北京</option>
                <option value="大连" ${contact.birthplace == "大连" ? "selected" : ""}>大连</option>
            </select>
        </div>

        <div class="form-group">
            <label for="mobile">手机：</label>
            <input value="${contact.mobile}" type="text" class="form-control" name="mobile" placeholder="请输入手机号码"/>
        </div>

        <div class="form-group">
            <label for="email">Email：</label>
            <input value="${contact.email}" type="text" class="form-control" name="email" placeholder="请输入邮箱地址"/>
        </div>

        <div class="form-group" style="text-align: center">
            <input class="btn btn-primary" type="submit" value="提交"/>
            <input class="btn btn-default" type="reset" value="重置"/>
            <input class="btn btn-default" type="button" value="返回"/>
        </div>
    </form>
</div>
</body>
</html>
