$(function () {
    // JavaScript 코드
    var loginButton = $("#login");

    if (loginButton.length) {
        loginButton.on("click", function () {
            redirectToLogin();
        });
    } else {
        console.error("Login button not found");
    }

    // 페이지 로드 시 실행되는 함수
    restoreFromSession();

    function redirectToLogin() {
        // 현재 페이지 URL을 세션에 저장
        var currentUrl = encodeURIComponent(window.location.href);
        sessionStorage.setItem("returnUrl", currentUrl);
        console.log("Current URL: " + currentUrl);

        // 로그인 페이지로 이동
        window.location.href = "loginPage.do";
        console.log("Redirecting to: " + window.location.href);
    }

    function restoreFromSession() {
        // 세션 스토리지에서 URL을 가져옴
        var returnUrl = sessionStorage.getItem("returnUrl");

        // 세션 스토리지에 저장된 URL이 있다면 해당 URL로 이동
        if (returnUrl) {
            console.log("Restoring from session: " + returnUrl);
            // 세션 스토리지에서 URL을 제거 (다시 돌아가지 않도록)
            sessionStorage.removeItem("returnUrl");
            window.location.href = decodeURIComponent(returnUrl);
        }
    }
});