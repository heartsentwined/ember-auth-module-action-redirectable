# action redirectable module for ember-auth

Redirects for post- sign in / out.

## Config

```coffeescript
App.Auth = Em.Auth.extend
  modules: ['actionRedirectable']

  actionRedirectable:
    # [string|false] (opt) fallback route name to redirect post- sign in
    #   or false to disable post- sign in redirect
    signInRoute: false

    # same
    signOutRoute: false

    # [bool] (opt) true to turn on "smart" redirect:
    #   redirect to last visited route (if any), (else back to fallback route)
    signInSmart: false

    # same
    signOutSmart: false

    # [array<string>] (opt) only used for "smart" redirect: list of route names
    #   that should be skipped when determining last visited route
    signInBlacklist: []

    # same
    signOutBlacklist: []
```
