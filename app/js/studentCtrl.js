MBDApp.controller('StudentCtrl', function($scope, MBDModel, $route, $timeout) {
    console.log("Student controller is initiated!");

    var navbarHeight = 75;
    $scope.number = 0;

    function getCompanies(){
        $scope.companies = MBDModel.getCompanies();
    }

    $scope.presentCompanyContent = function(companyName){
        if( companyName === $scope.clickedCompany ){
            $scope.clickedCompany = '';
        }
        else{
            $scope.clickedCompany = companyName;

            $timeout(function(){
                $('html, body').animate({
                    scrollTop: $('#' + companyName + 'Info').offset().top - navbarHeight - 15
                });
            }, 300);
        }
    };

    $scope.showCompany = function(company, index){
        $scope.number = index;
        $scope.name = company.name;
        $scope.image = company.image;
        $('html, body').animate({
            scrollTop: $('#contentWrapper').offset().top - navbarHeight - 15
        });
    };

    $scope.incrementIndex = function(increment){
        $scope.number += increment;
        if( $scope.number === $scope.companies.length){
            $scope.number = 0;
        }
        else if($scope.number === -1){
            $scope.number = $scope.companies.length -1;
        }
        $scope.name = $scope.companies[$scope.number].name;
        $scope.image = $scope.companies[$scope.number].image;
    };

    $scope.scrollTo = function(id){
        console.log(id);
        $("html, body").animate({
            scrollTop: $(id).offset().top - navbarHeight
        });
    };

    getCompanies();
    $scope.name = $scope.companies[0].name;
    $scope.image = $scope.companies[0].image;
});
