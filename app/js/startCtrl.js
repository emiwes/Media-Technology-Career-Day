MBDApp.controller('StartCtrl', function($scope, MBDModel, $http) {
    var navbarHeight = 75;

    $scope.scrollDown = function(){
        $("html, body").animate({
            scrollTop: $("#welcomeWrapper").offset().top - navbarHeight
        }, 750);
    };

    $scope.loadingInstagram = function(){
		return MBDModel.getLoadingInstagram();
	};

    $scope.getInstagram = function(){
		return MBDModel.getInstagram();
	};
});
