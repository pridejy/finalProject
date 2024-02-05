$(function(){
    // 아이디 중복 체크
    $('#id').on('focusout', function(){
        let id = $('#id').val();
        
        $.ajax({
            url: 'idCheck.do',
            type: 'POST',
            data: {"id": id},
            dataType: 'text',
            success: function(result){
                if(result === "0"){
                    $("#idCheckMsg").html('사용할 수 없는 아이디입니다.');
                } else {
                    $('#idCheckMsg').html('사용할 수 있는 아이디입니다.');
                }
            },
            error: function(xhr, status, error){
                console.error(xhr.status + ': ' + xhr.statusText);
                alert("서버요청실패");
            }
        });
    });

    // 비밀번호 일치 체크
	$('#password2').on('focusout', function(){
	    var password = $("#password").val();
	    var passwordChk = $("#password2").val();
	    var passwordChkMsg = $("#passwordCheckMsg");
	
	    if (password === "" || passwordChk === "") {
	        passwordChkMsg.html("");
	        return false;
	    }
	
	    if(password === passwordChk){
	        passwordChkMsg.html("비밀번호가 일치합니다.");
	    } else {
	        passwordChkMsg.html("비밀번호가 일치하지 않습니다.");
	    }
	});
	//선택태그 클릭했을때
	$("#emailDomain").change(function(){
		$("#email2").val($(this).val());
	});
});