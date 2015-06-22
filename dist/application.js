(function() {
  window.MBooks = Ember.Application.create();

  MBooks.ApplicationAdapter = DS.FixtureAdapter.extend();

  MBooks.Router.map(function() {
    this.resource('index', {
      path: '/'
    });
    return this.route("login");
  });

}).call(this);
