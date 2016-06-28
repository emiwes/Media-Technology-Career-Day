MBDApp.controller('StartCtrl', function($scope, MBDModel, $http) {
    console.log('START controller is instantiated!');

    var navbarHeight = 75;

    $scope.scrollDown = function(){
        $("html, body").animate({
            scrollTop: $("#welcomeWrapper").offset().top - navbarHeight
        });
    };

    $http.get("php/instagram.php")
        .then( function(response){
            console.log("Call to instagram was a success!");
            console.log(response.data);
            console.log(response.data.data);
            $scope.instagramPosts = response.data.data;
    	}, function(data){
            console.log("Call to instagram failed");
        });

});
