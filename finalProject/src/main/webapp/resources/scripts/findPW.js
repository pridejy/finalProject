$(function(){
	var modal = $("#myModal");
    var span = $(".close");
    var btnFindPWSubmit = $("#btn_findPw");
    
    function showModal(content){
    	var userPwParagraph = $("#userPW");
    	userPwParagraph.text(content);
    	modal.css("display", "block");
    }
    function closeModal(){
    	modal.css("display", "none");
    }
    
    btnFindPWSubmit.click(function(e){
    	e.preventDefault(); //기본동작 방지
    	
    	var idInput = $("#f_id").val().trim();
    	var nameInput = $("#f_name").val().trim();
        var emailInput = $("#f_email").val().trim();
        
        if(idInput === ''){
        	alert('아이디를 입력해주세요');
        	return;
        }else if(nameInput ===''){
        	alert('이름을 입력해주세요.');
        	return;
        }else if(emailInput === '') {
        	alert('이메일을 입력해주세요.');
        	return;
        }
        $.ajax({
        	url : "findPw.do",
        	type : "POST",
        	data : {"f_id" : idInput, "f_name" : nameInput, "f_email" : emailInput},
        	success: function(result){
        		if(result !== 'false'){
        			showModal(result);
        		}else {
        			showModal('아이디를 찾을 수 없습니다.');
        		}
        	},
        	error:function(result){
        	console.log(result);
        		alert("Ajax 요청에 실패했습니다.");
        	}
        });
    });
    $("#btn_checkPw").click(function(){
    	closeModal();
    });
    span.click(function(){
    	closeModal();
    });
});