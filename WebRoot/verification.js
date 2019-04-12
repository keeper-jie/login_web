/**
 * 1.用于登录界面表单验证
 */
function Log_in(form) {
		if (form.name.value == '') {
			alert('用户名不能为空！');
			form.username.focus();
			return false;
		}
		if (form.pwd.value == '') {
			alert('密码不能为空！');
			form.password.focus();
			return false;
		}
		return true;
	}
function Registered_user(form) {
	if (form.name.value == '') {
		alert('用户名不能为空！');
		form.name.focus();
		return false;
	}
	if (form.pwd.value == '' || form.pwd2.value == '') {
		alert('密码不能为空！');
		form.pwd.focus();
		return false;
	}
	if (form.pwd.value.length < 6) {
		alert('密码至少为6位，请重新输入！');
		form.pwd.focus();
		return false;
	}
	if (form.pwd.value != form.pwd2.value) {
		alert('两次输入的密码不一致，请重新输入！');
		form.pwd2.focus();
		return false;
	}
	return true;
}
function Registered_em(form) {
	if (form.name.value == '') {
		alert('用户名不能为空！');
		form.name.focus();
		return false;
	}
	if (form.pwd.value == '') {
		alert('密码不能为空！');
		form.pwd.focus();
		return false;
	}
	if (form.pwd.value.length < 6) {
		alert('密码至少为6位，请重新输入！');
		form.pwd.focus();
		return false;
	}
	if (form.pwd.value != form.pwd2.value) {
		alert('你两次输入的密码不一致，请重新输入！');
		form.pwd2.focus();
		return false;
	}
	if (form.sex.value == '') {
		alert('性别不能为空！');
		form.sex.focus();
		return false;
	}
	if (form.position.value == '') {
		alert('职位不能为空！');
		form.position.focus();
		return false;
	}
	if (form.salary.value == '') {
		alert('薪资不能为空！');
		form.salary.focus();
		return false;
	}
	if (form.home.value == '') {
		alert('地址不能为空！');
		form.home.focus();
		return false;
	}

	return true;
}
