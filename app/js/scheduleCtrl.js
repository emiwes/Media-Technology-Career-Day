MBDApp.controller('ScheduleCtrl', function($scope, MBDModel) {
    $scope.getSchedule = function(){
        return MBDModel.getSchedule();
    };
});
