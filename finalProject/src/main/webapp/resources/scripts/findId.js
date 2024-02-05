$(function() {
    var modal = $("#myModal");
    var span = $(".close");
    var btnFindIdSubmit = $("#btn_findId");

    function showModal(content) {
        var userIdParagraph = $("#userId");
        userIdParagraph.text(content);
        modal.css("display", "block");
    }

    function closeModal() {
        modal.css("display", "none");
    }

    btnFindIdSubmit.click(function(event) {
        event.preventDefault();

        var nameInput = $("#f_name").val().trim();
        var emailInput = $("#f_email").val().trim();

        if (nameInput === '') {
            alert('이름을 입력해주세요.');
            return;
        } else if (emailInput === '') {
            alert('이메일을 입력해주세요.');
            return;
        }

        $.ajax({
            url: "findId.do",
            type: "POST",
            data: {"f_name": nameInput, "f_email": emailInput},
            success: function(result) {
            	console.log(result);
                if (result !== 'false') {
                    // 아이디를 찾았을 때
                    showModal(result);
                } else {
                    // 아이디를 찾지 못했을 때
                    showModal('아이디를 찾을 수 없습니다.');
                }
            },
            error: function(result) {
            console.log(result);
                alert("AJAX 요청에 실패했습니다.");
            }
        });
    });

    // 확인 버튼 클릭 시 모달 닫기
    $("#btn_checkId").click(function() {
        closeModal();
    });

    // 모달 닫기 버튼 클릭 시 모달 닫기
    span.click(function() {
        closeModal();
    });
});