<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<form id="addOrUpdateForm" action="/user" method="post"
      class="form-horizontal">
    <div class="form-group">
        <label class="col-sm-3 control-label">用户名</label>
        <div class="col-sm-7">
            <input type="text" name="name" class="form-control"
                   maxlength="11" placeholder="用户名"
                   check-type="required" required-message="请填写用户名。"
                   value="${user.name}">
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-3 control-label">aaa</label>
        <div class="col-sm-7">
            <input type="text" name="name" class="form-control"
                   maxlength="11" placeholder="aaa"
                   check-type="required" required-message="aaa。"
                   value="${user.name}">
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-3 control-label">密码</label>
        <div class="col-sm-7">
            <input type="text" name="pwd" class="form-control" maxlength="50"
                   placeholder="密码"
                   check-type="required" required-message="请填写密码。"
                   >
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-3 control-label">性别</label>
        <div class="col-sm-7">
			<select class="form-control" name="sex" check-type="required">
				<c:if test="${user.sex != null}">
					<option value="${user.sex}">${user.sex}</option>
				</c:if>
				<option value="男">男</option>
				<option value="女">女</option>
			</select>
        </div>
    </div>

    <div class="form-group">
        <label class="col-sm-3 control-label">手机号</label>
        <div class="col-sm-7">
            <input type="text" name="phone" class="form-control"
                   maxlength="11" placeholder="手机号"
                   check-type="required" required-message="请填手机号。"
                   value="${user.phone}">
        </div>
    </div>
	<div class="form-group">
		<label class="col-sm-3 control-label">地址</label>
		<div class="col-sm-7">
			<input type="text" name="address" class="form-control"
				   maxlength="11" placeholder="地址"
				   check-type="required" required-message="请填地址。"
				   value="${user.address}">
		</div>
	</div>

    <input type="hidden" name="id" value="${user.id}">

</form>

<script type="text/javascript">
    $(function () {
        $("#addOrUpdateForm").validation({
            icon: true
        });

    });
</script>
