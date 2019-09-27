var timuId ="";
function xuanze(timuid){
	var op = document.getElementById("op"+timuid);
	
	if(op.className.search("solid")!=-1)
	{	 
		/*不选时候的操作*/
		op.className="layui-icon layui-icon-rate"
		/*找到id把它从timuId删除*/
		timuId = timuId.replace(','+timuid, '');
		
		addhref();
	}else{ 
		/*选中时候的操作*/
		op.className="layui-icon layui-icon-rate-solid"
		timuId = timuId+","+timuid;
		
		addhref();
	}
	console.log(timuId);
}

//生成试卷的链接
function addhref(){
	
	
	var papername = document.getElementById("paperName").value;
	
	console.log(papername+","+timuId);
}
//页面跳转
function jump(){
	var papername = document.getElementById("paperName").value;
	if(papername==""){
		alert("请输入试卷名");
	}else if(timuId==""){
		alert("请选择题目");
	}else{
		//alert(papername+","+timuId);
		//alert(document.getElementById("AAA").getAttribute("href"));
		//window.location.href = document.getElementById("AAA").getAttribute("href");
		// document.getElementById("AAA").setAttribute("href", "/TestOnline/addPaper?paperName="+papername.trim()+"&timuId="+timuId.trim());
		 
		  
		    $.ajax({
		        type: 'post',
		        url: "/TestOnline/addPaper?time="+new Date().getTime(),
		        dataType: "json",
		        data: {"paperName": papername.trim(),"timuId": timuId.trim()},
		        success: function (data) {
		        	 
		            if(data.return_date=="addOk"){
		            	alert("试卷已成功生成！");
		            	timuId="";
		            	window.location.href = "paperAdd.jsp";
		            }else{
		            	var errname = document.getElementById('addErr');
	                	  errname.innerHTML="<h4>试卷已存在</h4>"
	                	  errname.className="error"
		            }
		        },
		        error: function (xhr, type) {
		         
		            console.log(xhr);
		        }
		    });
		    
	}
	
}