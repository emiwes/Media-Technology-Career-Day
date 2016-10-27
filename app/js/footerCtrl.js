MBDApp.controller('FooterCtrl', function($scope, MBDModel) {
    $scope.getCompanies = function(){
        return MBDModel.getCompanies();
    };

    $scope.getSponsors = function(){
        return MBDModel.getSponsors();
    };
});
