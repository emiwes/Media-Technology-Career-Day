MBDApp.controller('StartCtrl', function($scope, MBDModel) {
    console.log('START controller is instantiated!');
	// $scope.title = "About us";
	// $scope.projectLeader = "Niklas Gustavsson";
	// $scope.artists = MBDModel.getWelcomeText();
    var navbarHeight = 75;

    $scope.scrollDown = function(){
        $("html, body").animate({
            scrollTop: $("#welcomeWrapper").offset().top - navbarHeight
        });
    };

});
