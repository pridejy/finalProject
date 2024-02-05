$(function(){
    $(".btn_reservation").click(function(){
        $(".toggle-btn-wrap").toggleClass('show');
    });

    const LuxuryImages = [
        'resources/images/jpg/luxury3.jpg',
        'resources/images/jpg/luxury4.jpg'
    ];
    const RoomTypesImages = [
    	'resources/images/jpg/luxury3.jpg',
    	'resources/images/jpg/juniorsuite4.jpg',
    	'resources/images/jpg/balcony3.jpg',
    	'resources/images/jpg/Delux.jpg',
    	'resources/images/jpg/cornersuite2.jpg',
    	'resources/images/jpg/suncruise_suite.jpg'
    ];

    const bxslide = $(".bx-viewport");
    let currentNext = 0;

    function showImage(index){
        const img = $('<img/>', {
            src: LuxuryImages[index],
            class : 'imageList'
        });

        bxslide.empty().append(img);
        currentNext = index;
    }

    showImage(currentNext);

    function changeImage (){
        currentNext = (currentNext + 1) % LuxuryImages.length;
        showImage(currentNext);
    }

    // "다음" 버튼에 대한 이벤트 리스너 추가
    $("#slider2-next").on("click", function() {
        changeImage();
    });

    // "이전" 버튼에 대한 이벤트 리스너 추가
    $("#slider2-prev").on("click", function() {
        currentNext = (currentNext - 1 + Images.length) % Images.length;
        showImage(currentNext);
    });
});