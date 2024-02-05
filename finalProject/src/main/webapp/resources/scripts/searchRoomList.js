/*
$(function(){
	function makeAjaxRequest() {
	        var checkin_date = $("#checkin_date").val();
	        var checkout_date = $("#checkout_date").val();
	        var room_type = $("#roomType").val();
	        var adults = $("#numPeople").val();
	        var child = $("#numChild").val();
	
	        $.ajax({
	            url: "reservation01.do",
	            type: "GET",
	            data: {
	                "checkin_date": checkin_date,
	                "checkout_date": checkout_date,
	                "roomType": room_type,
	                "numPeople": adults,
	                "numChild": child
	            },
	            success: function(result) {
	                console.log(result);
	                if (result !== '') {
	                    roomList(result);
	                } else {
	                    $(".noDate").show();
	                    $(".rsvn-wrap").hide();
	                }
	            },
	            error: function(result) {
	                alert("AJAX 요청에 실패했습니다.");
	            }
	        });
	    }
	     // 예약 버튼 클릭 시 AJAX 요청 실행
        $("#searchButton").click(function(e) {
            e.preventDefault();
            makeAjaxRequest();
        });
    });
    
	function roomList(result) {
		// 기존 객실 목록을 지우고 새로운 목록 생성
		$(".rsvn-wrap").empty();
		
		for (var i = 0; i < result.length; i++) {
		    var room = result[i];
		
		    var roomListWrap = $("<div>").addClass("rsvn-list");
		    var roomList = $("<div>").addClass("rsvn-content");
		    // ... (이하 생략, 필요한 코드 추가)
		
		    // 생성한 객실 목록을 화면에 추가
		    $(".rsvn-wrap").append(roomListWrap);
		    roomListWrap.append(roomList);
            }
        }
    });
});
*/