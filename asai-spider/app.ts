// import db from './db';
const cheerio: any = require('cheerio');

let rootDir: string = './asaicc-dist/top909/';

const {
  https,
  path,
  fs,
  urlToFileName,
  urlToFile,
  fileToDir,
  hasPath,
  needNew,
  dirMake,
  reSave,
  getHtml,
  getImg,
} = require('./utils/pa');

// 下载图片
function downloadImg(allItems: string | any[]) {
  for (let i = 0; i < allItems.length; i++) {
    const picUrl = allItems[i].pic;
    getImg(picUrl, rootDir + allItems[i].picNew)
      .then((res: any) => {
        console.log(666.901, res);
      })
      .catch((err: any) => {
        console.log(666.902, err);
      });
  }
}

// 处理html页面的请求体
function downloadHtml(url: string, htmlFile: string) {
  reSave(htmlFile, false)
    .then((filePath: string) => {
      getHtml(url).then((res: any) => {
        const $ = cheerio.load(res);
        let allItems: any[] = [];
        $('li .item').each(function (this: any) {
          const title = $(this).find('.title').text();
          const star = $(this).find('.rating_num').text();
          const pic = $(this).find('.pic img').attr('src');
          const picNew = urlToFile(pic);
          allItems.push({
            title,
            star,
            pic,
            picNew,
          });
        });
        fs.writeFile(filePath, JSON.stringify(allItems), (err: any) => {
          if (!err) {
            console.log(666.909, '成功储存到' + filePath);
          }
        });
        downloadImg(allItems);
      });
    })
    .catch((err: any) => {
      console.log(666.123, `文件已存在${err}`);
    });
}

downloadHtml('https://movie.douban.com/top250', rootDir + 'films.json');
