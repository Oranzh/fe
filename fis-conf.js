// 基础配置
const APP = 'tpl'; // APP的名称，根据项目的实际情况来制定
//本地环境
const lc_root = '/home/lee/www'; //本地网站目录
const lc_url = '/';
//QA环境
const qa_tpl_receiver = 'http://fis.xiaohui.li/receiver.php';
const qa_img_receiver = 'http://fis.xiaohui.li/receiver4.php';
const qa_tpldir = '/home/i/sd/' + APP;
const qa_cdn = '//fis.oranzh.cc/';
const qa_webroot = APP;
const qa_url = '/' + APP; 

 
//线上环境
const ol_cdn = '//online.oranzh.cc';
const ol_root = 'output/';
const ol_url = '/' + APP;



////////////////////////////////////
////////////////////////////////////
// 以下配置为当前目录的基本配置
// 一般情况下不用更改
// 注意：每个类别都需要独立配置才行

// 默认基础配置
//fis.set('project.ignore', );
fis
  .match('*.js', {
    optimizer: fis.plugin('uglify-js')
  })
  .match('*.css', {
    optimizer: fis.plugin('clean-css')
  });
fis.config.set("project.watch.usePolling", true);

// 开发环境配置
fis.media('dev')
  //TPL JSON
  .match('*.{tpl,json}', {
    deploy: fis.plugin('local-deliver', {
      to: lc_root + APP
    })
  })
  .match('*.{woff,ttf,woff2,otf,eot,svg,png,jpg,gif,css,js}', {
    deploy: fis.plugin('local-deliver', {
      to: lc_root + APP + '\\static'
    }),
    url: lc_url + APP + '/static$0',
  })
  //ALL
  .match('**', {
    useHash: false
  });

// 联调环境配置
fis
  .media('qa')
  .match('**', {
    useHash: true,
    domain: qa_cdn
  })
  .match('*.tpl', {
    deploy: fis.plugin('http-push', {
      receiver: qa_tpl_receiver,
      to: qa_tpldir
    }),
    useHash: false
  })
  .match('*.{woff,ttf,woff2,otf,eot,svg,png,jpg,gif,css,js}', {
    deploy: fis.plugin('http-push', {
      receiver: qa_img_receiver,
      to: APP + '/static'
    }),
    url: APP + '/static$0'
  });




// 线上环境配置
fis.media('production')
  .match('**', {
    useHash: true,
    domain: ol_cdn
  })
  .match('*.tpl', {
    useHash: false
  })
  .match('*.js', {
    deploy: fis.plugin('local-deliver', {
      to: ol_root + APP + '/is'
    }),
    optimizer: fis.plugin('uglify-js'),
    url: ol_url + '/js$0'
  })
  .match('*.css', {
    deploy: fis.plugin('local-deliver', {
      to: ol_root + APP + '/css'
    }),
    optimizer: fis.plugin('clean-css'),
    url: ol_url + '/css$0'
  })
 
.match('*.{png,jpg,gif}', {
  deploy: fis.plugin('local-deliver', {
    to: ol_root + APP + '/image'
  }),
  optimizer: fis.plugin('png-compressor'),
  url: ol_url + '/image$0',
});
