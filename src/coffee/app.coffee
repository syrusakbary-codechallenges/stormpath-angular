configFn = () ->

modules = [
  'stormpath.controllers',
  'stormpath.services',
  'stormpath.directives'
]

@app = angular.module('stormpath', modules)
@app.factory("$config", ->
    BASE_API: '' # http://api.bar.com/
    USER_RESOURCE: 'users.json'
)
@app.config([configFn])
