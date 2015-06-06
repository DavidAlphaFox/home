
MBooks.IndexRoute = Ember.Route.extend
  model:()->
    @store.find('link')