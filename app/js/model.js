MBDApp.factory('MBDModel', function ($http) {
    console.log("MODEL is instantiated!");

    var li = true;
    var instagramPosts;
    this.getNavbarOptions = function(){
        return [
            {'option':'Start', 'hash':'start'},
            {'option':'För företag', 'hash':'companies'},
            {'option':'För studenter', 'hash':'students'},
            {'option':'Schema', 'hash':'schema'},
            {'option':'Kontakt', 'hash':'contact'}
        ];
    };

    this.getCompanies = function(){

            return [
                {'name':'River', 'image':'img/companies/river.png'},
                {'name':'Dynabyte', 'image':'img/companies/dynabyte.png'},
                {'name':'Schibsted', 'image':'img/companies/schibsted.png'},
                {'name':'Apegroup', 'image':'img/companies/apegroup.png'},
                {'name':'Kaplan', 'image':'img/companies/kaplan.png'},
                {'name':'Sveriges Ingenjörer', 'image':'img/companies/sverigesIngenjorer.png'},
                {'name':'unionen', 'image':'img/companies/unionen.png'},

                {'name':'River2', 'image':'img/companies/river.png'},
                {'name':'Dynabyte2', 'image':'img/companies/dynabyte.png'},
                {'name':'Schibsted2', 'image':'img/companies/schibsted.png'},
                {'name':'Apegroup2', 'image':'img/companies/apegroup.png'},
                {'name':'Kaplan2', 'image':'img/companies/kaplan.png'},
                {'name':'Sveriges Ingenjörer2', 'image':'img/companies/sverigesIngenjorer.png'},
                {'name':'unionen2', 'image':'img/companies/unionen.png'}
            ];
    };

    $http.get("php/instagram.php").then( function(response){
            console.log("Call to instagram was a success!");
            console.log(response.data);
            console.log(response.data.data);
            instagramPosts = response.data.data.slice(0,8);
            var date = new Date(parseInt(instagramPosts[0].created_time)*1000);
            var locale = "en-us";
            var month = date.toLocaleString(locale, { month: "short" });
            console.log(date.getDate() + "/" + date.getMonth() + "/" + date.getFullYear());
            console.log(month);
            li = false;
    	}, function(data){
            console.log("Call to instagram failed");
    });

    this.getLoadingInstagram = function(){
        return li;
    };

    this.getInstagram = function(){
        return instagramPosts;
    };



    return this;
});
