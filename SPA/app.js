var app = angular.module('myApp', ['ngRoute']);

app.config(function ($routeProvider) {
    $routeProvider

        .when('/', {
            templateUrl: 'page1.html',
            controller: 'FirstController'
        }).when('/index/:first/:last',
            {
                templateUrl: 'index.html',
                controller: 'FirstController'
            })

        .when('/EmployeeDetails', {
            templateUrl: 'page2.html',
            controller: 'SecondController'
        })

        .when('/SearchEmployee', {
            templateUrl: 'page3.html',
            controller: 'ThirdController'
        })

        .otherwise({ redirectTo: '/' });
});

app.controller('FirstController', function ($scope, $routeParams) {
    $scope.message = 'More than a vendor. More than a lab. We are the healthcare partner you can count on.'
    if ($routeParams.first && $routeParams.last) {
        $scope.person = {
            first: $routeParams.first,
            last: $routeParams.last,
        };
    }
});


app.controller('SecondController', ['$scope', '$http', function ($scope, $http) {
    $scope.userData = undefined;
    var req = {
        method: 'GET',
        url: 'https://minimalelement.github.io/laboratory/SPA/data.json',
        headers: { 'Content-Type': 'application/json' }
    };


    $http(req).then(function (response) {
        $scope.userData = response.data.data;
    });
}]);

app.controller('ThirdController', ['$scope', '$http', function ($scope, $http) {
    $scope.userData = undefined;
    var req = {
        method: 'GET',
        url: 'https://minimalelement.github.io/laboratory/SPA/data.json',
        headers: { 'Content-Type': 'application/json' }
    };


    $http(req).then(function (response) {
        $scope.userData = response.data.data;
    });
}]);

app.filter("myGender", function () {
    return function (Gender) {
        switch (Gender) {
            case 1:
                return "Male";
            case 2:
                return "Female";
            case 3:
                return "Transgender";
        }
    }
});
