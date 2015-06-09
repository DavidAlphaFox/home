(function() {
  MBooks.IndexRoute = Ember.Route.extend({
    model: function() {
      return this.store.find('link');
    }
  });

}).call(this);
