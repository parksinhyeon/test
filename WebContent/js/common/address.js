	function goPopup(src){
		
	    var pop = window.open("../../views/mypage/jusoPopup.jsp","pop","width=570,height=420, scrollbars=yes, resizable=yes"); 
		
	}
	function jusoCallBack(roadAddr,addrDetail){
		$("#addr").val(roadAddr);
		$("#addrDetail").val(addrDetail);
		
		$("#dealLocal").val(roadAddr);
		addressChk(roadAddr,addrDetail);
	}