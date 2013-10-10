Em.onLoad 'Ember.Application', (application) ->
  application.initializer
    name: 'ember-auth.module.action-redirectable'
    before: 'ember-auth-load'

    initialize: (container, app) ->
      app.register 'authModule:actionRedirectable', \
      Em.Auth.ActionRedirectableAuthModule

Em.onLoad 'Ember.Application', (application) ->
  application.initializer
    name: 'ember-auth.module.action-redirectable.inject'
    after: 'ember-auth.module.action-redirectable'

    initialize: (container, app) ->
      app.inject 'authModule:actionRedirectable', 'router', 'router:main'

      Em.Route.reopen
        beforeModel: (queryParams, transition) ->
          transition = queryParams unless transition?
          @auth.module.actionRedirectable.registerRedirect transition
          super.apply this, arguments
