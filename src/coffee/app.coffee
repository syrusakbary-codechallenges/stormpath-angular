configFn = () ->

modules = [
  'stormpath.controllers',
  'stormpath.services',
  'stormpath.directives'
]

@app = angular.module('stormpath', modules)
@app.factory("$config", ->
    API_BASE: '' # http://api.bar.com/
    USER_RESOURCE: 'users.json'
)
@app.config([configFn])
