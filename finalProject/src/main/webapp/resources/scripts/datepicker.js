$(function() {
    $("#datepicker").datepicker({
        dateFormat: 'yy-mm-dd',
        showOtherMonths: true,
        showMonthAfterYear: true,
        changeYear: true,
        changeMonth: true,
        showOn: "both",
        buttonImage: "http://jqueryui.com/resources/demos/datepicker/images/calendar.gif",
        buttonImageOnly: true,
        buttonText: "선택",
        yearSuffix: "년",
        monthNamesShort: ['1','2','3','4','5','6','7','8','9','10','11','12'],
        monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
        dayNamesMin: ['일','월','화','수','목','금','토'],
        dayNames: ['일요일','월요일','화요일','수요일','목요일','금요일','토요일'],
        minDate: "-1M",
        maxDate: "+1M",
        numberOfMonths: 2  // 표시할 월의 수를 설정합니다. 필요에 따라 이 값을 조정할 수 있습니다.
    });

    let firstDate = null;
    let lastDate = null;
    $(".startDate").datepicker({
        dateFormat: "yy-mm-dd",
        minDate: 0,
        onSelect: function (selectedDate) {
            firstDate = selectedDate;
            $(".endDate").datepicker("option", "minDate", selectedDate);
            $(".startDate").val(selectedDate);
        }
    });
    $(".endDate").datepicker({
        dateFormat: "yy-mm-dd",
        minDate: 1,
        beforeShowDay: function (date) {
            if (firstDate) {
                return [firstDate <= date];
            }
            return [true];
        },
        onSelect: function (selectedDate) {
            lastDate = selectedDate;
            $(".startDate").datepicker("option", "maxDate", selectedDate);
            $(".endDate").val(selectedDate);
        }
    });
});