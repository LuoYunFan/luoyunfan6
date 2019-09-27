function changeCont(timuId){
	window.location.href="/TestOnline/timuChange?timuId="+timuId;
}
function judgeDel1(delid){

	if(!window.confirm("确定删除???")){ return; }
	/*var delid = document.getElementById("timuId1").innerText;*/
	 
	window.location.href="/TestOnline/delTimu?delid="+delid;
}