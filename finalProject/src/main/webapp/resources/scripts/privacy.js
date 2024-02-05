$(function(){
	//동의함 전체 체크
	$("#f_agreeAll").click(function(){
		var chk = $(this).is(":checked");
		if(chk) {
			$("#f_agree1_Y").prop("checked", true);
			$("#f_agree2_Y").prop("checked", true);
			$("#f_agree3_Y").prop("checked", true);
		} else {
			$("#f_agree1_Y").prop("checked", false);
			$("#f_agree2_Y").prop("checked", false);
			$("#f_agree3_Y").prop("checked", false);
		}
	});
	//동의함 체크
	$("#chkBtn").click(function(){
		var agree1Checked = $("#f_agree1_Y").is(":checked");
        var agree2Checked = $("#f_agree2_Y").is(":checked");
        var agree3Checked = $("#f_agree3_Y").is(":checked");
        
        if(!agree1Checked || !agree2Checked || !agree3Checked){
        	alert("모든 항목에 동의해주세요");
        	return false;
        }
	});
});