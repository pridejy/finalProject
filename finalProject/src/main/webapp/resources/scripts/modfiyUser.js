$(function(){
	$('#btn_modifyUser').click(function(e){
		e.preventDefault(); //기본 동작방지
		
		var enteredPassword=$('#password').val();
		var userId=$('#userId').val();
		
		$.ajax({
			url : 'checkPassword.do',
			type:'POST',
			data: {userId:userId, enteredPassword: enteredPassword},
			success:function(isPasswordMatch){
				if(isPasswordMatch ==='true'){
					window.location.href='modfiyUser_02.do';
				}else{
					alert('비밀번호가 일치 하지 않습니다.');
				}
			},
			error:function(){
				alert('오류가 발생했습니다.');
			}
			
		});
	});
});