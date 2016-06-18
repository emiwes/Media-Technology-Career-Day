MBDApp.controller('StudentCtrl', function($scope, MBDModel, $route) {
    console.log("Student controller is initiated!");


    function getCompanies(){
        $scope.companies = MBDModel.getCompanies();
    }

    getCompanies();

    $scope.showCompanyContent = function(companyObj){
        $scope.clickedCompany = companyObj.name;
    };

    $scope.closeCompanyContent = function(companyName){
        $scope.clickedCompany = '';

    };
});
