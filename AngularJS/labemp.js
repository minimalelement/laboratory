var sample=angular.module("sample", []);
sample.controller("myctrl", function($scope, $http)
{
    $http.get('data.json')
    .success(function(response)
    {
        $scope.entry=response.data;
    });
});


/*var sample2=angular.module("sample2", []);
sample2.controller("ctrl", function($scope, $http)
{
    $http.get('data.json')
    .success(function(response)
    {
        $scope.entry=response.data2;
    });
});*/