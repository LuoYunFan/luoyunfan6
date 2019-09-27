function changeTime(stuZh,paperName){ 
		
	    
		time = new Date();
		 yy = time.getFullYear();
		 mm = time.getMonth()+1;
		 if(mm<10){
			 mm = "0"+mm;
		 }
		 
		 dd = time.getDate();
		 if(dd<10){
			 dd = "0"+dd;
		 }
		 time1 = prompt("请输入考试截止时间(yyyy-mm-dd):",yy+"-"+mm+"-"+dd);
		 var pattern = /^\d{4}-\d{2}-\d{2}$/;
		 if (time1 != null&&pattern.test(time1)){
			 //判断是否符合实际情况
			 y1 = time1.substring(0,4);
			 m1 = time1.substring(5,7);
			 d1 = time1.substring(8,10);
			 
			 flag1 = true;
			 flag2 = true;
//			 alert("年："+Number(y1)+"mm:"+ Number(m1) + "dd"+Number(d1));
			 if(Number(y1)<time.getFullYear()){
				 flag1 = false;
			 }
			 if(Number(m1)>1&&Number(m1)<12){
				 if(Number(m1)==1||Number(m1)==3||Number(m1)==5||Number(m1)==7
						 ||Number(m1)==8||Number(m1)==10||Number(m1)==12){
					 if(Number(d1)<1||Number(d1)>31){
						  
						 flag2 = false;
					 }
				 }else{
					 
					 if(Number(d1)<1||Number(d1)>30){
						  
						 flag2 = false;
					 }
				 } 
			 }else{flag2=false;}
			 if(flag1&&flag2){
//				 alert(time1);
				 //如果日期符合实际情况 则向后台传送数据
				 $.ajax({	 	
				        type: 'post',
				        url: "/TestOnline/changeTestPlan?time="+new Date().getTime(),
				        dataType: "json",
				        data: {"stuZh": stuZh,"paperName":paperName,"time1":time1},
				        success: function (data) {
				        	
				            if(data.return_date=="aaaa"){
				            	alert("修改成功！");
				            	window.location.href = "/TestOnline/searchAllTest";
				            }else{
				            	alert("aaa");
				            	 
				            }
				        },
				        error: function (xhr, type) {
				         
				            console.log(xhr);
				        }
				    }); 
				 
 
			 }else{
				 alert("输入有误请重新输入！");
			 }
		 }else{
			 alert("输入有误请重新输入！");
		 }	 
}