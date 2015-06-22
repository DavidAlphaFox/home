window.MBooks = Ember.Application.create()

MBooks.ApplicationAdapter = DS.FixtureAdapter.extend()
#MBooks.ApplicationView = Em.View.extend({classNames: ["container"]});
MBooks.Router.map(
  ()->
    @resource('index', { path: '/' })
    @route("login")
)