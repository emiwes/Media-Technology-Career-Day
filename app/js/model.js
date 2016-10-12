MBDApp.factory('MBDModel', function ($http) {
    var li = true;
    var instagramPosts;
    var teamMembers;
    var companies;
    var schedule;

    this.getNavbarOptions = function(){
        return [
            {'option':'Start', 'hash':'start'},
            {'option':'För företag', 'hash':'companies'},
            {'option':'För studenter', 'hash':'students'},
            {'option':'Schema', 'hash':'schedule'},
            {'option':'Kontakt', 'hash':'contact'}
        ];
    };

    $http.get("php/getTeam.php").then( function(response){
        console.log("Fetching team was a success!");
        teamMembers = response.data;
    }, function(error){
        console.log("Could not fetch team members");
        console.log(error);
    });

    $http.get("php/getCompanies.php").then( function(response){
        console.log("Fetching companies was a success!");
        companies = response.data;
    }, function(error){
        console.log("Could not fetch companies");
        console.log(error);
    });

    $http.get("php/getSchedule.php").then( function(response){
        console.log("Fetching schedule was a success!");
        schedule = response.data;
    }, function(error){
        console.log("Could not fetch schedule");
        console.log(error);
    });

    $http.get("php/instagram.php").then( function(response){
            console.log("Call to instagram was a success!");
            instagramPosts = response.data.data.slice(0,8);
            var date = new Date(parseInt(instagramPosts[0].created_time)*1000);
            var locale = "en-us";
            var month = date.toLocaleString(locale, { month: "short" });
            //console.log(date.getDate() + "/" + date.getMonth() + "/" + date.getFullYear());
            li = false;
    	}, function(error){
            console.log("Call to instagram failed");
            console.log(error);
    });

    this.getLoadingInstagram = function(){
        return li;
    };

    this.getInstagram = function(){
        return instagramPosts;
    };

    this.getTeamMembers = function(){
        return teamMembers;
    };

    this.getCompanies = function(){
        return companies;
    };

    this.getSchedule = function(){
        return schedule;
    };

    return this;
});
