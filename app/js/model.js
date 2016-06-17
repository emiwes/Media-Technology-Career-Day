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
