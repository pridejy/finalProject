$(function() {
    window.deleteBoard = function(seq, returnUrl) {
        if (confirm("정말로 삭제하시겠습니까?")) {
            $.ajax({
                type: "GET",
                url: "deleteBoard.do",
                data: { seq: seq },
                success: function(response) {
                    alert("삭제되었습니다.");
                    window.location.reload();
                },
                error: function(error) {
                    alert("삭제에 실패했습니다.");
                }
            });
        }
    };
});