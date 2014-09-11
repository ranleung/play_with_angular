
App = angular.module "App", []

App.controller "IndexCtrl", ['$scope', ($scope) ->

	$scope.favoriteMovies = [{
		title: "Harry Potter"
		},
		{ 
		title: "Lord of The Rings"
		},
		{ 
		title: "Star Wars"
		},
		{ 
		title: "Rambo"
		},
		{ 
		title: "Book"
		},
		{ 
		title: "Javascript"
		},
		{
		title: "Wedding Crashers"		
		}]

	$scope.removeMovie = (movie) ->
		$scope.favoriteMovies.splice($scope.favoriteMovies.indexOf(movie), 1)

	$scope.count = 0
	$scope.keyPressed = ->
		$scope.count++

	$scope.word = false
	$scope.submit = ->
		$scope.word = true

]

App.filter "reverse", ->
  (title) ->
    title.split("").reverse().join("")





