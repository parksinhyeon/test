	function goPopup(){
		
	    var pop = window.open("SemiProject/WebContent/views/mypage/jusoPopup.jsp","pop","width=570,height=420, scrollbars=yes, resizable=yes"); 
		
	}
	function jusoCallBack(roadAddr,addrDetail){
		$("#roadAddr").val(roadAddr);
		$("#addrDetail").val(addrDetail);

	}