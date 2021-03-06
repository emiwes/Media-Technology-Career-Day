MBDApp.controller('NavbarCtrl', function($scope, MBDModel, $route, $window) {
    var body = document.getElementById('body');

    $scope.route = $route;
    $scope.navbarOptions = MBDModel.getNavbarOptions();

    $scope.closeNavbar = function(){
        body.style.overflow = "initial";
        var input = document.getElementById('menuInput');
        input.checked = false;
    };

    $scope.preventScroll = function(){
        var input = document.getElementById('menuInput');
        if(input.checked){
            body.style.overflow = "hidden";
        }
        else{
            body.style.overflow = "initial";
        }
    };

    $scope.scrollToTop = function(){
        $('html, body').animate({
            scrollTop: $('body').offset().top
        }, 750);
    };

    $window.addEventListener('scroll', function(val){
        showScrollTopButton();
    });

    function showScrollTopButton(){
        var oldState = $scope.showScrollButton;
        if($window.pageYOffset > 700){
            $scope.showScrollButton = true;
        }
        else{
            $scope.showScrollButton = false;
        }
        if($scope.showScrollButton !== oldState){
            $scope.$digest();
        }
    }

});
