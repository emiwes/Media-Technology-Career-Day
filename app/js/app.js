var MBDApp = angular.module('MBDApp', ['ngRoute', 'ngResource', 'ngAnimate']);

MBDApp.config(['$routeProvider', function($routeProvider) {
    $routeProvider.
    when('/', {
        templateUrl: 'partials/start.html',
        controller: 'StartCtrl',
        activeTab: 'start'
    }).
    when('/students', {
        templateUrl: 'partials/student.html',
        controller: 'StudentCtrl',
        activeTab: 'students'
    }).
    when('/companies', {
        templateUrl: 'partials/company.html',
        controller: 'CompanyCtrl',
        activeTab: 'companies'
    }).
    when('/schedule', {
        templateUrl: 'partials/schema.html',
        controller: 'ScheduleCtrl',
        activeTab: 'schedule'
    }).
    when('/contact', {
        templateUrl: 'partials/contact.html',
        controller: 'ContactCtrl',
        activeTab: 'contact'
    }).
    otherwise({
        redirectTo: '/'
    });
}]);
