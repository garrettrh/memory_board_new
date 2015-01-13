@memoriesapp = angular.module('memories', [])

	
@memoriesapp.config([
  '$httpProvider', ($httpProvider)->
    $httpProvider.defaults.headers.common['X-CSRF-Token'] = $('meta[name=csrf-token]').attr('content')
])

@memoriesapp.run(->
  console.log 'angular app running'
)