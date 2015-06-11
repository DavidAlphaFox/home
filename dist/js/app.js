(function() {
  window.MBooks = Ember.Application.create();

  MBooks.ApplicationAdapter = DS.FixtureAdapter.extend();

  MBooks.Router.map(function() {
    return this.resource('index', {
      path: '/'
    });
  });

}).call(this);

(function() {
  MBooks.TodosController = Ember.ArrayController.extend({
    actions: {}
  });

}).call(this);

(function() {
  MBooks.IndexRoute = Ember.Route.extend({
    model: function() {
      return this.store.find('link');
    }
  });

}).call(this);

(function() {
  MBooks.Link = DS.Model.extend({
    title: DS.attr('string'),
    url: DS.attr('string')
  });

  MBooks.Link.FIXTURES = [
    {
      id: 1,
      title: 'Learn You Some Erlang for Great Good 翻译',
      url: 'http://mbooks.me/LYEFGG/content.html'
    }, {
      id: 2,
      title: '我的博客',
      url: 'http://my.oschina.net/u/236698'
    }, {
      id: 3,
      title: '我司京东众筹－4G流量包一辈子',
      url: 'http://z.jd.com/project_details.action?projectId=14307'
    }, {
      id: 4,
      title: '关于我',
      url: 'http://cn.linkedin.com/in/gaotianpo'
    }, {
      id: 5,
      title: 'VPS提供商',
      url: 'http://www.vultr.com/?ref=6833358'
    }
  ];

}).call(this);

(function() {
  MBooks.IndexView = Ember.View.extend({
    layoutName: "mbooks_container",
    templateName: "index"
  });

}).call(this);
