angular
	.module('app')
	.controller("MemoriesController", [
  '$scope',
  ($scope)->
    console.log 'ExampleCtrl running'

    $scope.exampleValue = "Hello angular and rails"

])