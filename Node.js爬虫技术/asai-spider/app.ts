import db from './db';
import type Idb from './db/type';
import FormatDate from './utils/FormatDate';

const cheerio: any = require('cheerio');

let rootDir: string = './asaicc-dist/top909/';

const {
  // https,
  // path,
  fs,
  sleep,
  // urlToFileName,
  urlToFile,
  // fileToDir,
  // hasPath,
  // needNew,
  // dirMake,
  reSave,
  getHtml,
  getImg,
} = require('./utils/pa');

if (Date.now()) {
  const chars = 'abcdefghijklmnopqrstuvwxyz';
  paGrade(chars);
}
function paGrade(chars: string) {
  for (let char of chars) {
    const charUrl =
      'https://www.autohome.com.cn/grade/carhtml/' + char + '.html';
    saveGrade(char, charUrl).then((res) => {
      console.log(666.101, 'paGrade', res);
      paBrand(char, charUrl);
    });
    sleep(200);
  }
}
function saveGrade(char: string, charUrl: string) {
  return saveDb(
    {
      type: 'select',
      table: 'acharsurl',
      field: 'firstLetter',
      where: 'firstLetter="' + char + '"',
    },
    {
      type: 'update',
      table: 'acharsurl',
      set: 'editTime="' + FormatDate() + '"',
    },
    {
      type: 'insert',
      table: 'acharsurl',
      field: 'firstLetter,url,editTime',
      value: '"' + char + '","' + charUrl + '","' + FormatDate() + '"',
    }
  );
}

function paBrand(char: string, charUrl: string) {
  getHtml(charUrl, 'gb2312').then((res: any) => {
    const $ = cheerio.load(res);

    const tableField: string[] = [
      'firstLetter',
      'dlid',
      'dlolr',
      'urlBrand',
      'imgBrand',
      'titleBrand',
      'imgBrandNew',
      'editTime',
    ];
    $('dl').each(function (this: any) {
      const imgBrand = $(this).find('dl dt a img').attr('src');
      const tableFieldValue = [
        char,
        $(this).attr('id'),
        $(this).attr('olr'),
        $(this).find('dl dt a').attr('href'),
        imgBrand,
        $(this).find('dl dt div a').text(),
        urlToFile(imgBrand),
        FormatDate(),
      ];
      saveBrand(tableField, tableFieldValue).then((res: any) => {
        saveBrandImg(tableFieldValue).then((resImg: any) => {
          console.log(666.102, 'paBrand', res, resImg);
        });
      });
      sleep(200);
    });

    const tableField2: string[] = [
      'firstLetter',
      'dlid',
      'dlid2',
      'urlBrand2',
      'titleBrand2',
      'tm',
    ];
    $('dd .h3-tit').each(function (this: any) {
      const urlBrand2 = $(this).find('a').attr('href');
      const ids = urlBrand2.split('.html')[0].split('-');
      const tableFieldValue2: any[] = [
        char,
        ids[1],
        ids[2],
        urlBrand2,
        $(this).find('a').text(),
        FormatDate(),
      ];
      saveBrand2(tableField2, tableFieldValue2).then((res: any) => {
        console.log(666.102, 'paBrand2', res);
      });
      sleep(200);
    });

    // const tableField3: string[] = [
    //   'firstLetter',
    //   'dlid',
    //   'dlolr',
    //   'urlBrand2',
    //   'titleBrand2',
    //   'tm',
    // ];

    // $('dd .h3-tit').each(function (this: any) {
    //   const urlBrand2=$(this).find('a').attr('href')
    //   const ids=urlBrand2.split('-')
    //   const tableFieldValue3:any[] = [
    //     char,
    //     ids[1],
    //     ids[2],
    //     urlBrand2,
    //     $(this).find('a').text(),
    //     FormatDate(),
    //   ];

    //   sleep(200);
    // });
  });
}
function saveBrand2(tableField: string[], tableFieldValue: any[]) {
  return saveDb(
    {
      type: 'select',
      table: 'cbrand',
      field: 'dlid',
      where: 'dlid2=' + tableFieldValue[2] + '',
    },
    {
      type: 'update',
      table: 'cbrand',
      set: 'tm="' + FormatDate() + '"',
    },
    {
      type: 'insert',
      table: 'cbrand',
      field: tableField.join(','),
      value: '"' + tableFieldValue.join('","') + '"',
    }
  );
}
function saveBrand(tableField: string[], tableFieldValue: any[]) {
  return saveDb(
    {
      type: 'select',
      table: 'bbrand',
      field: 'dlid',
      where: 'dlid=' + tableFieldValue[1] + '',
    },
    {
      type: 'update',
      table: 'bbrand',
      set: 'editTime="' + FormatDate() + '"',
    },
    {
      type: 'insert',
      table: 'bbrand',
      field: tableField.join(','),
      value: '"' + tableFieldValue.join('","') + '"',
    }
  );
}
function saveBrandImg(tableFieldValue: any[]) {
  return getImg(tableFieldValue[4], tableFieldValue[6]);
}

function saveDb(select: Idb, update: Idb, insert: Idb) {
  return new Promise((resolve, reject) => {
    try {
      // db(select).then((ress: any) => {
      //   if (ress.code === 909) {
      //     db(update).then((res) => {
      //       resolve(res);
      //     });
      //   } else {
          db(insert).then((res) => {
            resolve(res);
          });
      //   }
      // });
    } catch (err) {
      reject(err);
    }
  });
}

// 下载图片
function downloadImg(tableFieldValue: string | any[]) {
  for (let i = 0; i < tableFieldValue.length; i++) {
    const picUrl = tableFieldValue[i].pic;
    getImg(picUrl, rootDir + tableFieldValue[i].picNew)
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
        let tableFieldValue: any[] = [];
        $('li .item').each(function (this: any) {
          const title = $(this).find('.title').text();
          const star = $(this).find('.rating_num').text();
          const pic = $(this).find('.pic img').attr('src');
          const picNew = urlToFile(pic);
          tableFieldValue.push({
            title,
            star,
            pic,
            picNew,
          });
        });
        fs.writeFile(filePath, JSON.stringify(tableFieldValue), (err: any) => {
          if (!err) {
            console.log(666.909, '成功储存到' + filePath);
          }
        });
        downloadImg(tableFieldValue);
        sleep(3000);
      });
    })
    .catch((err: any) => {
      console.log(666.123, `文件已存在${err}`);
    });
}
export default { downloadHtml };
