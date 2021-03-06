MBDApp.controller('StudentCtrl', function($scope, MBDModel, $route, $timeout) {
    var navbarHeight = 75;
    var companies = [];

    $scope.getCompanies = function(){
        if(companies.length < 1){
            // Slicing the return so that referencing to original array will be removed.
            companies = MBDModel.getCompanies().slice();
            if (companies === undefined) {
                companies = [];
                return companies;
            }

            // Removing Netlight from companylist. It should not be presented.
            var removeIndex = companies.map(function(item) { return item.id; }).indexOf("netlight");
            companies.splice(removeIndex, 1);

            var randomIndex = Math.floor(Math.random()*companies.length);
            $scope.number = randomIndex;
            setCompany(randomIndex);
        }
        return companies;
    };

    $scope.presentCompanyContent = function(companyName){
        if( companyName === $scope.clickedCompany ){
            $scope.clickedCompany = '';
        }
        else{
            $scope.clickedCompany = companyName;
            $timeout(function(){
                $('html, body').animate({
                    scrollTop: $('#' + companyName).offset().top - navbarHeight - 15
                });
            }, 400);
        }
    };

    $scope.showCompany = function(company, index){
        $scope.number = index;
        setCompany($scope.number);
        $('html, body').animate({
            scrollTop: $('#contentWrapper').offset().top - navbarHeight - 15
        });
    };

    $scope.incrementIndex = function(increment){
        $scope.number += increment;
        if( $scope.number === companies.length){
            $scope.number = 0;
        }
        else if($scope.number === -1){
            $scope.number = companies.length -1;
        }
        setCompany($scope.number);
    };

    $scope.scrollTo = function(id){
        $("html, body").animate({
            scrollTop: $(id).offset().top - navbarHeight
        }, 1000);
    };

    function setCompany(index){
        $scope.name = companies[index].name;
        $scope.image = companies[index].logo;
        $scope.description = companies[index].description;
        $scope.website = companies[index].website;
    }

    document.addEventListener('keydown', function(e){
        switch (e.keyCode) {
            case 37:
                $scope.incrementIndex(-1);
                break;
            case 39:
                $scope.incrementIndex(1);
                break;

            default:
                break;
        }
        $scope.$digest();
    });

    $scope.getLunchLectures = function(){
        return MBDModel.getLunchLectures();
    };



});
