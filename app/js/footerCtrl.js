MBDApp.controller('FooterCtrl', function($scope, MBDModel) {
    console.log('FOOTER controller is instantiated!');

    $scope.getCompanies = function(){
        console.log(MBDModel.getCompanies());
        return MBDModel.getCompanies();
    };
});
