
 
 
let daa ="";
function judge(rightDa,id){
	 
	 
	  
	  var radios = document.getElementsByName("da"+id);
      var value;
      for(var i=0;i<radios.length;i++){
          if(radios[i].checked == true){
              value = radios[i].value;
          }
      }
  
}

 function getResult(paperName,stuZh){
	 
	 if(!window.confirm("确定提交???")){ return; }
	 
	 var checkInputs = document.querySelectorAll('input:checked') // 获取选中的input
	 for(var i = 0;i<checkInputs.length;i++){
	     var v = checkInputs[i].value;
	     // 计算
	      
	     daa = daa+","+v;
	 }
	 window.location.href="/TestOnline/getResult?daaa="+daa+"&paperName="+paperName+"&stuZh="+stuZh;
	 
	 daa="";
//	 alert(da);
	 //alert(score);
 }