$(function () {
    // room 이미지에 마우스 오버할 때 플러스 이미지 추가
    function addPlusImage(containerClassName) {
        $(containerClassName).on("mouseover", function () {
            var plusImage = $("<img src='resources/images/png/plus.png' alt='Plus Image'>");

            plusImage.css({
                position: "absolute",
                left: "50%",
                top: "50%",
                transform: "translate(-50%, -50%)",
                width: "50px",
                height: "50px",
                display: "none",
            });

            $(this).append(plusImage);

            plusImage.css("display", "block");
        });

        $(containerClassName).on("mouseleave", function () {
            $("img[alt='Plus Image']", this).remove();
        });
    }

    addPlusImage(".img1");
    addPlusImage(".img2");

    // 메인 이미지 리스트
    const mainImages = [
        'resources/images/jpg/main_slider_img02.jpg',
        'resources/images/jpg/main_slider_img19.jpg',
        'resources/images/jpg/main_slider_img20.jpg',
        'resources/images/jpg/main_slider_img22.jpg',
        'resources/images/jpg/main_slider_img24.jpg',
        'resources/images/jpg/main_slider_img25.jpg',
        'resources/images/jpg/main_slider_img01.jpg',
        'resources/images/jpg/main_slider_img04.jpg',
        'resources/images/jpg/main_slider_img26.jpg'
    ];

    const bxslide = $('.bxslide');
    let currentInext = 0;
	
	// 이미지 밑에 원 표시
	function createImageCircleItems() {
	    const circleContainer = $(".bx-pager-item");
	    for (let i = 0; i < mainImages.length; i++) {
	        const circleItems = $('<div class="bx-circle-item"></div>');
	        circleContainer.append(circleItems);
	    }
	}
	createImageCircleItems();
	
	//그림 태그 생성
    function showImage(index) {
        const img = $('<img/>', {
            src: mainImages[index],
            class: 'imageList'
        });

        bxslide.empty().append(img);
        currentInext = index;

        const circleItems = $('.bx-circle-item');
        circleItems.css("background", "none");
        circleItems.eq(currentInext).css("background", "#fff");
    }
    showImage(currentInext);

	//이미지 바뀜
    function changeImage() {
        currentInext = (currentInext + 1) % mainImages.length;
        showImage(currentInext);
    }
    $(".bx-circle-item").on("click", function () {
        const index = $(this).index();
        showImage(index);
    });
    setInterval(changeImage, 8000);
	
	
    //checkin checkout
    
    let firstDate = null;
    let lastDate = null;
    
	 $(".startDate, .endDate").datepicker({
	    dateFormat: "yy-mm-dd",
	    showOn: "focus", // "both"에서 "focus"로 변경
	    buttonText: "", // 버튼 텍스트 삭제
	    yearSuffix: "년",
	    monthNamesShort: ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12'],
	    monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
	    dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
	    dayNames: ['일요일', '월요일', '화요일', '수요일', '목요일', '금요일', '토요일'],
	    minDate: 0,
	    maxDate: "+1M",
	    onSelect: function (selectedDate) {
	        // 체크인 날짜 선택 시
	        if ($(this).hasClass("startDate")) {
	            firstDate = selectedDate;
	            $(".endDate").datepicker("option", "minDate", selectedDate);
	        }
	        // 체크아웃 날짜 선택 시
	        else if ($(this).hasClass("endDate")) {
	            lastDate = selectedDate;
	            $(".startDate").datepicker("option", "maxDate", selectedDate);
	        }
	    },
	    beforeShowDay: function (date) {
	        // 체크인 날짜와 같거나 이후의 날짜만 선택 가능
	        if (firstDate && lastDate) {
	            return [firstDate <= date && date <= lastDate];
	        }
	        return [true];
	    }
	});
	// 체크인은 오늘로 설정
	$(".startDate").datepicker("setDate", new Date());
	
	// 체크아웃은 다음 날로 설정
	var nextDay = new Date();
	nextDay.setDate(nextDay.getDate() + 1);
	$(".endDate").datepicker("setDate", nextDay);
});