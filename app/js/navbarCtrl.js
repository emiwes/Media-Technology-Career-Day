MBDApp.controller('NavbarCtrl', function($scope, MBDModel, $route) {
    console.log("NAVBAR controller is initiated!");
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

});
