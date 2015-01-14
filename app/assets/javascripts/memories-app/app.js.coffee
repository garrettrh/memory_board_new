angular
	.module('app', [])

	
.config([
  '$httpProvider', ($httpProvider)->
    $httpProvider.defaults.headers.common['X-CSRF-Token'] = $('meta[name=csrf-token]').attr('content')
])

.run(->
  console.log 'angular app running'
)