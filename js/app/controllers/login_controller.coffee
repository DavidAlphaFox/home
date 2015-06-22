MBooks.LoginController = Em.Controller.extend

  actions:
    login: ->
      data = @getProperties("email", "password")
      console.log data

    register: ->
      console.log "register clicked"
      @transitionTo("register")
