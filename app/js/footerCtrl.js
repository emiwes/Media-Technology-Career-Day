MBDApp.controller('FooterCtrl', function($scope, MBDModel) {
    console.log('FOOTER controller is instantiated!');


    $scope.companies = MBDModel.getCompanies();
});
