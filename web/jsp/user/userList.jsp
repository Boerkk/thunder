<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../common/public_css.jspf"%>
<div>
	<div class="row" id="toolbar" style="margin: 10px 0 0 0;">
		<div class="col-md-10">
			<div class="btn-group" role="group" aria-label="...">

					<button type="button" class="btn btn-default"
						onclick="addOrUpdate(0);">
						<span class="glyphicon glyphicon-plus" aria-hidden="true"></span>
						添加
					</button>
					<button type="button" class="btn btn-default"
						onclick="editAdmin();">
						<span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>
						编辑
					</button>
					<button type="button" class="btn btn-default"
						onclick="delAdminById();">
						<span class="glyphicon glyphicon-remove" aria-hidden="true"></span>
						拉黑
					</button>
					<button type="button" class="btn btn-default"
							onclick="unDelAdminById();">
						<span class="glyphicon glyphicon-ok" aria-hidden="true"></span>
						取消拉黑
					</button>
			</div>
		</div>
		<input type="hidden" id="emp_id" value="${emp_id}"> <input
			type="hidden" id="pro_id" value="${project.pro_id}">
		<div class="col-md-2">
			<div class="input-group">
				<input type="text" class="form-control" id="keyword"
					value="${keyword}" placeholder="输入关键字..."> <span
					class="input-group-btn">
					<button class="btn btn-default" type="button" onclick="refresh();">搜索</button>
				</span>
			</div>
		</div>
	</div>
	<table id="adminTable"></table>
</div>

<%@ include file="../common/public_js.jspf"%>

<script>

	$(function() {
		$('#adminTable').bootstrapTable({
			method : 'get',
			url : "/getAllUserServlet",
			classes : "table table-hover table-striped",
			cache : false,
			toolbar : "#toolbar",//设置工具栏的Id或者class
			striped : true, //使表格带有条纹
			pagination : true, //在表格底部显示分页工具栏
			pageList : [ 10, 20, 30, 35 ],
			contentType : "application/x-www-form-urlencoded",
			pageSize : 10,
			pageNumber : 1,
			idField : "uid", //标识哪个字段为id主键
			clickToSelect : true, //点击行即可选中单选/复选框
			sidePagination : 'server',//服务端请求
			queryParams : queryParams, //参数
			showColumns : false,//不显示下拉框（选择显示的列）
			height : 554,
			columns : [ {
				checkbox : true
			}, {
				field : 'uid',
				title : '用户ID'
			},{
				field : 'uname',
				title : '用户真实姓名'
			}, {
				field : 'idcard',
				title : '身份证号'
			}, {
				field : 'phone',
				title : '手机号'
			},{
				field : 'email',
				title : '邮箱'
			} ,{
				field : 'address',
				title : '地址'
			},{
				field : 'state',
				title : '登录状态'
			},{
				field : 'lid',
				title : '登录编号'
			}]
		});
	});

	function queryParams(params) {
		params.keyword = $("#keyword").val();
		return params;
	}

	function editAdmin() {
		var selects = $('#adminTable').bootstrapTable('getSelections');
		if (selects.length == 0) {
			dialogUtils.alert("至少选择一条数据");
			return;
		} else if (selects.length > 1) {
			dialogUtils.alert("只能选择一条数据");
			return;
		} else {
			addOrUpdate(selects[0].id);
		}
	}

	function addOrUpdate(id) {
		var title = "新增用户";
		if (id > 0) {
			title = "修改用户";
		}
		dialogUtils.dialog({
			title : title,
			contentUrl : "/jsp/user/add_update_user.jsp",//跳转路径
			button : {
				label : "保存",
				cssClass : 'btn-primary',
				action : function(dialog) {
					$(".btn-primary").attr("disabled",true);
					var formObj = dialog.getModalBody().find(
							"#addOrUpdateForm");
					var options = {
						dataType : "json",
						type : "post",
						success : function(data) {
							if (data.event == 1) {
								refresh();//刷新
								dialogUtils.alert(data.message);//弹窗,添加用户成功
								dialog.close();
							} else {
								dialogUtils.alert(data.message);//弹窗,添加用户失败
							}

						}
					};
					if (formObj.valid()) {
						formObj.ajaxSubmit(options);
					}
				}
			}
		});
	}
	function delAdminById() {
		var selects = $('#adminTable').bootstrapTable('getSelections');
		if (selects.length == 0) {
			dialogUtils.alert("至少选择一条数据");
			return;
		}
		var ids = "";
		$.each(selects, function() {
			ids += this.uid + ",";
		});
		dialogUtils.confirm("是否确定拉黑", function(result) {
			if (result) {
				ajax.fnAjax("/disableLoginServlet", {
					"ids" : ids
				}, function(data) {
					if (data.event > 0) {
						dialogUtils.alert(data.message);
						refresh();
					} else {
						dialogUtils.alert(data.message2);
					}
				});
			}
		});
	}

	function unDelAdminById() {
		var selects = $('#adminTable').bootstrapTable('getSelections');
		if (selects.length == 0) {
			dialogUtils.alert("至少选择一条数据");
			return;
		}
		var ids = "";
		$.each(selects, function() {
			ids += this.uid + ",";
		});
		dialogUtils.confirm("是否确定取消拉黑", function(result) {
			if (result) {
				ajax.fnAjax("/ableLoginServlet", {
					"ids" : ids
				}, function(data) {
					if (data.event > 0) {
						dialogUtils.alert(data.message);
						refresh();
					} else {
						dialogUtils.alert(data.message2);
					}
				});
			}
		});
	}
	$('#tabs ul li', parent.document).on('click',function() {
		refresh();
     });
	$('.sidebar-menu li a', parent.document).on('click',function() {
		refresh();
     });
	function refresh() {
		$('#adminTable').bootstrapTable("refresh");
	}

</script>