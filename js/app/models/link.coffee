MBooks.Link = DS.Model.extend
  title: DS.attr('string')
  url: DS.attr('string')



MBooks.Link.FIXTURES = [
  {
    id: 1,
    title: 'Learn You Some Erlang for Great Good 翻译',
    url: 'http://mbooks.me/LYEFGG/content.html'
  },
  {
    id: 2,
    title: '我的博客',
    url: 'http://my.oschina.net/u/236698'
  },
  {
    id: 3,
    title: '我司京东众筹－4G流量包一辈子',
    url: 'http://z.jd.com/project_details.action?projectId=14307'
  },
  {
    id:4,
    title: '关于我',
    url: 'http://cn.linkedin.com/in/gaotianpo'
  },
  {
    id:5
    title: 'VPS提供商'
    url: 'http://www.vultr.com/?ref=6833358'
  }
]