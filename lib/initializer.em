Em.onLoad 'Ember.Application', (application) ->
  application.initializer
    name: 'ember-auth.module.action-redirectable'
    after: 'ember-auth'

    initialize: (container, app) ->
      app.register 'authModule:actionRedirectable', Em.Auth.ActionRedirectableAuthModule
