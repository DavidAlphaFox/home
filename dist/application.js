(function() {
  window.MBooks = Ember.Application.create();

  MBooks.ApplicationAdapter = DS.FixtureAdapter.extend();

  MBooks.Router.map(function() {
    return this.resource('index', {
      path: '/'
    });
  });

}).call(this);
