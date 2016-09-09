MBDApp.controller('CompanyCtrl', function($scope, MBDModel) {
    var navbarHeight = 75;
    $scope.scrollTo = function(id){
        console.log(id);
        $("html, body").animate({
            scrollTop: $(id).offset().top - navbarHeight
        }, 1000);
    };
});
