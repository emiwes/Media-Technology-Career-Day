MBDApp.controller('ContactCtrl', function($scope, MBDModel, $http) {
    console.log('CONTACT controller is instantiated!');
	// $scope.title = "About us";
	// $scope.projectLeader = "Niklas Gustavsson";
	// $scope.artists = MBDModel.getWelcomeText();
    $scope.successMessage = "";
    var email_regex = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/i;
    var pattern = new RegExp(email_regex);
    var feedbackText = document.getElementById("contactFeedbackContainer");

    function checkEmail(mailString){
        return pattern.test(mailString);
    }

    function setShake(){
        feedbackText.className += " contactFeedback";
        setTimeout( function(){
            feedbackText.classList.remove("contactFeedback");
        }, 1000 );
    }

    $scope.sendMail = function(){
        if($scope.name && $scope.email && $scope.subject && $scope.message ){
            if( checkEmail($scope.email) ){

                var mailContent = {
                    "name" : $scope.name,
                    "email" : $scope.email,
                    "subject" : $scope.subject,
                    "message" : $scope.message
                };

                var request = {
        	      	url: "php/sendMail.php",
        	      	method: "GET",
        	      	params: {"mailContent" : mailContent}
        	    };

                $http(request).success(function(data){
                    console.log(data);
        	    	console.log("success!");
                    $scope.name = "";
                    $scope.email = "";
                    $scope.subject = "";
                    $scope.message = "";
                    $scope.successMessage = "Ditt meddelande har skickats!";
                    document.getElementById("contactEmailButton").disabled = true;
        	    });
            }
            else{
                setShake();
                $scope.successMessage = "Ogiltig e-post adress!";
            }
        }
        else{
            setShake();
            if(!$scope.name){
                $scope.successMessage = "Fyll i namn";
            }
            else if(!$scope.email){
                $scope.successMessage = "Fyll i e-post adress";
            }
            else if(!$scope.subject){
                $scope.successMessage = "Fyll i ämne";
            }
            else if(!$scope.message){
                $scope.successMessage = "Fyll i meddelande";
            }
        }
    };

    $scope.groupMembers = [{
        "forename":"Niklas",
        "surname":"Gustavsson",
        "position":"Projektledare",
        "mail":"niklas.gustavsson@mediasbranschdag.com",
        "img":"img/profiles2/niklas.jpg"
    },{
        "forename":"Emil",
        "surname":"Westin",
        "position":"Webmaster",
        "mail":"emil.westin@mediasbranschdag.com",
        "img":"img/profiles2/emil.jpg"
    },{
        "forename":"Gabriella",
        "surname":"Sanchez Karlsson",
        "position":"Ansvarig för kommunikation och PR",
        "mail":"gabriella.s.karlsson@mediasbranschdag.com",
        "img":"img/profiles2/gabriella.jpg"
    },{
        "forename":"Sabina",
        "surname":"von Essen",
        "position":"Gruppansvarig för Näringslivsgruppen",
        "mail":"sabina.v.essen@mediasbranschdag.com",
        "img":"img/profiles2/sabina.jpg"
    },{
        "forename":"David",
        "surname":"Tranaeus",
        "position":"Företagskontakt",
        "mail":"david.tranaeus@mediasbranschdag.com",
        "img":"img/profiles2/david.jpg"
    },{
        "forename":"Christian",
        "surname":"Abdelmassih",
        "position":"Företagskontakt",
        "mail":"christian.abdelmassih@mediasbranschdag.com",
        "img":"img/profiles2/christian.jpg"
    },{
        "forename":"Emma",
        "surname":"Igelström",
        "position":"Logistikansvarig",
        "mail":"emma.igelstrom@mediasbranschdag.com",
        "img":"img/profiles2/emmai.jpg"
    },{
        "forename":"Evelina",
        "surname":"Hedberg",
        "position":"Sittningsansvarig",
        "mail":"evelina.hedberg@mediasbranschdag.com",
        "img":"img/profiles2/evelina.jpg"
    },{
        "forename":"Marcus",
        "surname":"Hogler",
        "position":"Gruppansvarig för Kommunikationsgruppen",
        "mail":"marcus.hogler@mediasbranschdag.com",
        "img":"img/profiles2/marcus.jpg"
    },{
        "forename":"Sofia",
        "surname":"Blomgren",
        "position":"Ansvarig för kommunikation och PR",
        "mail":"sofia.blomgren@mediasbranschdag.com",
        "img":"img/profiles2/sofia.jpg"
    },{
        "forename":"Beata",
        "surname":"von Grothusen",
        "position":"Sponsansvarig",
        "mail":"beata.v.grothusen@mediasbranschdag.com",
        "img":"img/profiles2/beata.jpg"
    },{
        "forename":"Glenn",
        "surname":"Schmitz",
        "position":"Human Resources",
        "mail":"glenn.schmitz@mediasbranschdag.com",
        "img":"img/profiles2/glenn.jpg"
    },{
        "forename":"Linnea",
        "surname":"Lennartsson",
        "position":"Logistikansvarig",
        "mail":"linnéa.lennartsson@mediasbranschdag.com",
        "img":"img/profiles2/beata.jpg"
    },{
        "forename":"Emma",
        "surname":"Olsson",
        "position":"Sittningsansvarig",
        "mail":"emma.olsson@mediasbranschdag.com",
        "img":"img/profiles2/emmao.jpg"
    }];

});
