function login(){
    var username = document.getElementById("ID").value;
    var password = document.getElementById("PASSWORD").value;
    if(username==""){
        $.jGrowl("用户名不能为空！", { header: '提醒' });
    }else if(password==""){
        $.jGrowl("密码不能为空！", { header: '提醒' });
    }else{
        AjaxFunc();
    }
}
function AjaxFunc()
{
    var username = document.getElementById("ID").value;
    var password = document.getElementById("PASSWORD").value;
    $.ajax({
        type: 'post',
        url: "$/TestOnline/stulogin?time="+new Date().getTime(),
        dataType: "json",
        data: {"username": username,"password": password},
        success: function (data) {
            var return_aaa = data.return_date;
             
            if(return_aaa=="success"){
            	window.location.href = "index.jsp";
            }else{
            	$.jGrowl("用户名密码错误！", { header: '提醒' });
            }
        },
        error: function (xhr, type) {
            console.log(xhr);
        }
    });
}





function checkForm(){
    var nametip = checkUserName();
    var passtip = checkPassword();
    var conpasstip = ConfirmPassword();
    var phonetip = checkPhone();
    var Na = checkName();
    //如果验证成功首先去数据库注册，然后页面跳转
    if(Na&&nametip && passtip && conpasstip && phonetip){
    	 
    	var username = document.getElementById("userName").value;
        var password = document.getElementById("userPasword").value;
        var name = document.getElementById("Name").value;
        var phone = document.getElementById("userPhone").value;
        
        $.ajax({
            type: 'post',
            url: "$/TestOnline/stuRegist?time="+new Date().getTime(),
            dataType: "json",
            data: {"username": username,"password": password,"name":name,"phone":phone},
            success: function (data) {
                var return_aaa = data.return_date;
                 
                if(return_aaa=="success"){
                	alert("注册成功！");
                	window.location.href = "stuLogin.jsp";
                }else{
                	var errname = document.getElementById('registErr');
                	  errname.innerHTML="<h4>用户名已被注册</h4>"
                	  errname.className="error"
                }
            },
            error: function (xhr, type) {
            	 
                console.log(xhr);
            }
        });
    	
    }
}


function checkFormInfo(){
     
    var passtip = checkPassword();
    var conpasstip = ConfirmPassword();
    var phonetip = checkPhone();
     
     
    if( passtip && conpasstip && phonetip){
    	 
    	var stuZh = document.getElementById("stuZh").value;
        var stuPwd = document.getElementById("userPasword").value;
         
        var stuPhone = document.getElementById("userPhone").value;
        
        $.ajax({
            type: 'post',
            url: "$/TestOnline/changeInfo?time="+new Date().getTime(),
            dataType: "json",
            data: {"stuZh": stuZh,"stuPwd":stuPwd,"stuPhone":stuPhone},
            success: function (data) {
                var return_aaa = data.return_date;
                 
                if(return_aaa=="pwdNo"){
                	alert("更新成功，密码已修改，请重新登录！");
                	window.location.href = "stuLogin.jsp";
                }else{
                	alert("更新成功！");
                	window.location.href = "/TestOnline/stuFind?stuZh="+stuZh;
                }
            },
            error: function (xhr, type) {
            	 
                console.log(xhr);
            }
        });
    	
    }
}










//验证用户名
function checkUserName(){
    var username = document.getElementById('userName');
    var errname = document.getElementById('nameErr');
    var pattern = /^\d{6}$/;  //用户名格式正则表达式：用户名要至少三位
    if(username.value.length == 0){
        errname.innerHTML="<h4>用户名不能为空</h4>"
        errname.className="error"
        return false;
    }
    if(!pattern.test(username.value)){
        errname.innerHTML="<h4>用户名不合规范</h4>"
        errname.className="error"
        return false;
    }
    else{
        errname.innerHTML="<h4>用户名可用</h4>"
        errname.className="success";
        return true;
    }
}
//验证密码
function checkPassword(){
    var userpasswd = document.getElementById('userPasword');
    var errPasswd = document.getElementById('passwordErr');
    var pattern = /^\w{4,}$/; //密码要大于4位
    if(!pattern.test(userpasswd.value)){
        errPasswd.innerHTML="<h4>密码不合规范</h4>"
        errPasswd.className="error"
        return false;
    }
    else{
        errPasswd.innerHTML="<h4>密码可用</h4>"
        errPasswd.className="success";
        return true;
    }
}
//确认密码
function ConfirmPassword(){
    var userpasswd = document.getElementById('userPasword');
    var userConPassword = document.getElementById('userConfirmPasword');
    var errConPasswd = document.getElementById('conPasswordErr');
    if((userpasswd.value)!=(userConPassword.value) || userConPassword.value.length == 0){
        errConPasswd.innerHTML="<h4>两次密码不一致</h4>"
        errConPasswd.className="error"
        return false;
    }
    else{
        errConPasswd.innerHTML="<h4>验证成功</h4>"
        errConPasswd.className="success";
        return true;
    }
}
//验证姓名
function checkName(){
	var name = document.getElementById('Name');
	var naError = document.getElementById('NaErr');
	
	if(name.value.length==0){
		naError.innerHTML="<h4>姓名不能为空</h4>"
		naError.className="error"
		return false;
	}else{
		naError.innerHTML="<h4>OK</h4>"
	    naError.className="success";
		return true;
	}
}
//验证手机号 
function checkPhone(){
    var userphone = document.getElementById('userPhone');
    var phonrErr = document.getElementById('phoneErr');
    var pattern = /^1[34578]\d{9}$/; //验证手机号正则表达式
    if(!pattern.test(userphone.value)){
        phonrErr.innerHTML="<h4>手机号码不合规范</h4>"
        phonrErr.className="error"
        return false;
    }
    else{
        phonrErr.innerHTML="<h4>手机号可用</h4>"
        phonrErr.className="success";
        return true;
    }
}