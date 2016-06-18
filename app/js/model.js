MBDApp.factory('MBDModel', function ($http) {
    console.log("MODEL is instantiated!");

    this.getWelcomeText = function(){
        return "blahahoiaqojewqewjpq";
    };

    this.getNavbarOptions = function(){
        return [
            {'option':'Start', 'hash':'start'},
            {'option':'För studenter', 'hash':'students'},
            {'option':'För företag', 'hash':'companies'},
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
    // function getInstagram(){
    //     $http.get("php/instagram.php").success( function(data){
    //         console.log(data);
	// 		var instaPosts = data.data;
    //         console.log(instaPosts);
    // 	});
    // }

    // getInstagram();

    return this;
});
