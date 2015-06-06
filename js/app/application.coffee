window.MBooks = Ember.Application.create()

MBooks.ApplicationAdapter = DS.FixtureAdapter.extend()

MBooks.Router.map(
  ()->
    @resource('index', { path: '/' })
)