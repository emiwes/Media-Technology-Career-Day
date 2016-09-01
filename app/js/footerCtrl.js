MBDApp.controller('FooterCtrl', function($scope, MBDModel) {
    console.log('FOOTER controller is instantiated!');

    $scope.getCompanies = function(){
        return MBDModel.getCompanies();
    };
});
