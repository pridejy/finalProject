$(function(){
    var searchbtn = $(".search_Btn");
    
    function displayBoardList(boardList){
        var boardContainer = $("#boardContainer");
        boardContainer.empty(); 

        for(var i=0; i<boardList.length; i++){
            var board = boardList[i];
            var boardItem = $("<div class='board-row'>");
            boardItem.append("<div class='board-cell'>" + board.seq + "</div>");
            boardItem.append("<div class='board-cell'><a href='getBoard.do?seq=" + board.seq + "'>" + board.title + "</a></div>");
            boardItem.append("<div class='board-cell'>" + board.id + "</div>");
            boardItem.append("<div class='board-cell'>" + board.regDate + "</div>");
            boardItem.append("<div class='board-cell'>" + board.hit + "</div>");
            boardContainer.append(boardItem);
        }
    }

    searchbtn.click(function(e){
        e.preventDefault();

        // 검색 조건과 키워드를 가져옴
        var searchCondition = $("select[name='searchCondition']").val();
        var searchKeyword = $("input[name='searchKeyword']").val();

        $.ajax({
            url: "search.do",
            type: "GET",
            dataType: "json",
            data: {searchCondition: searchCondition, searchKeyword: searchKeyword},
            success: function(data){
                displayBoardList(data);
            },
            error: function(xhr, status, error){
                console.error("AJAX 오류 : " + status, error);
            }
        });
    });
});