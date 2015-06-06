// Generated by CoffeeScript 1.8.0
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
    }
  ];

}).call(this);

//# sourceMappingURL=link.js.map