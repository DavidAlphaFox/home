// Generated by CoffeeScript 1.8.0
(function() {
  MBooks.LoginController = Em.Controller.extend({
    actions: {
      login: function() {
        var data;
        data = this.getProperties("email", "password");
        return console.log(data);
      },
      register: function() {
        console.log("register clicked");
        return this.transitionTo("register");
      }
    }
  });

}).call(this);

//# sourceMappingURL=login_controller.js.map
