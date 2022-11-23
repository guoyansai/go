// const path: any = require('path');
import dbInit from './db';
import type Idb from './db/type';
import FormatDate from './utils/FormatDate';
const fs: any = require('fs');

let db: any;
let config: any = require('./config.json');
let logrr: any[] = [];
let logtimer: any = null;

function clog(...arg: any) {
  // 在Date()前面加个!，可以关闭日志功能
  if (Date()) {
    console.log(...arg);
    logrr.push(arg);
    if (!logtimer) {
      logtimer = setTimeout(() => {
        fs.appendFileSync('./log.txt', '\n' + logrr.join('\n'));
        logrr = [];
        logtimer = null;
      }, 2000);
    }
  }
}

let carFields: any = {};
const cheerio: any = require('cheerio');
const spider = require('./utils/spider');

if (Date.now()) {
  start(99);
}
async function start(index: number) {
  let myConfig = await fs.readFileSync('./config.json', 'utf8');
  if (myConfig) {
    config = JSON.parse(myConfig);
  } else {
    await fs.writeFileSync('./config.json', JSON.stringify(config));
  }
  let dbc: any;
  if (config.sql.user === 'excel') {
  }else if (config.sql.user === 'sqlite3') {
    dbc = new dbInit.sqliteDb(config);
  } else {
    dbc = new dbInit.mysqlDb(config);
  }
  db = (sql: Idb) => {
    return dbc.sqlDb(sql);
  };
  await fs.writeFileSync('./log.txt', FormatDate());
  await db({
    type: 'select',
    table: 'as_car_param_cn_to_en',
    field: 'cn_name,en_name',
  }).then((res: any) => {
    res.data.forEach((el: any) => {
      carFields[el.cn_name] = el.en_name;
    });
  });
  clog(666.002, carFields);
  if (index > 26) {
    try {
      const curLetter = await fs.readFileSync('./firstLetter.txt', 'utf8');
      index = config.chars.indexOf(curLetter);
    } catch (e) {
      index = 0;
    }
  }
  await sqlFirstLetter(index);
  await fs.writeFileSync('./log.txt', FormatDate());
}

// 循环26个首字母
async function sqlFirstLetter(index: number) {
  await fs.writeFileSync('./firstLetter.txt', config.chars[index]);
  if (index < config.charsLen) {
    await htmlFirstLetter(config.chars[index]);
    spider.sleep(config.tmHtml);
    sqlFirstLetter(index + 1);
  }
}

// 单个字母品牌
async function htmlFirstLetter(char: string) {
  const charUrl =
    config.url.firstLetter.start + char + config.url.firstLetter.end;
  char = char.toUpperCase();
  clog(666.101, '首字母' + char, charUrl);
  await saveFirstLetter(char, charUrl);
  await paCar(char, charUrl);
  clog(666.108, char + '首字母爬完！');
}

// 储存首字母网址
function saveFirstLetter(char: string, charUrl: string) {
  return saveDb(
    {
      type: 'select',
      table: 'as_first_letter',
      field: 'firstLetter',
      where: 'firstLetter="' + char + '"',
    },
    {
      type: 'update',
      table: 'as_first_letter',
      set: 'tm="' + FormatDate() + '"',
    },
    {
      type: 'insert',
      table: 'as_first_letter',
      field: 'firstLetter,urlFirstLetter,tm',
      value: '"' + char + '","' + charUrl + '","' + FormatDate() + '"',
    }
  );
}

//  储存brand品牌
async function sqlBrand(vals: any[]) {
  await saveBrand(vals);
  await saveBrandImg(vals);
}

// 爬虫主程序
async function paCar(char: string, charUrl: string) {
  // 爬取首字母页面内容
  await spider.getHtml(charUrl, 'gb2312').then(async (res: any) => {
    let $ = cheerio.load(res);
    // 公用的变量
    let vals: string[];
    let valsArr: string[][] = [];
    // 下面是爬取brand品牌的名称和图片
    $('dl').each(function (this: any) {
      const imgBrand = $(this).find('dl dt a img').attr('src');
      const brandId = $(this).attr('id');
      const tmpValue: string[] = [
        char,
        brandId,
        $(this).attr('olr'),
        $(this).find('dl dt a').attr('href'),
        imgBrand,
        $(this).find('dl dt div a').text(),
        // spider.urlToFile(imgBrand),// 获取原来的地址路径
        'logo' + brandId + '.png',
        FormatDate(),
      ];
      valsArr.push(tmpValue);
    });
    for (vals of valsArr) {
      clog(666.201, '品牌', vals[5]);
      await sqlBrand(vals);
      clog(666.208, vals[5] + '品牌爬完！');
      spider.sleep(config.tmSql);
    }
    // 下面是爬取与储存厂商品牌
    valsArr = [];
    $('dd .h3-tit').each(function (this: any) {
      const urlBrand2 = $(this).find('a').attr('href');
      const ids = urlBrand2.split('.html')[0].split('-');
      const tmpValue: any[] = [
        char,
        ids[1],
        ids[2],
        $(this).find('a').text(),
        urlBrand2,
        FormatDate(),
      ];
      valsArr.push(tmpValue);
    });
    for (vals of valsArr) {
      clog(666.301, '品牌厂商', vals[3]);
      await saveBrandGroup(vals);
      clog(666.308, vals[3] + '品牌厂商爬完！');
      spider.sleep(config.tmSql);
    }
    // 下面爬取品牌下车系
    valsArr = [];
    $('dl dd').each(function (this: any) {
      const urlBrand2 = $(this).find('.h3-tit a').attr('href');
      const ids = urlBrand2.split('.html')[0].split('-');
      const mainValue: any[] = [char, ids[1], ids[2]];
      $(this)
        .find('.rank-list-ul li')
        .each(function (this: any) {
          const seriesName = $(this).find('h4').text();
          if (seriesName) {
            const tmpValue: any[] = [
              ...mainValue,
              $(this).attr('id').slice(1),
              seriesName,
              $(this).find('div .red').text(),
              $(this).find('h4 a').attr('href'),
              $(this).find('div .red').attr('href'),
              $(this).find('div :nth-child(1)').attr('href'),
              $(this).find('div :nth-child(2)').attr('href'),
              $(this).find('div :nth-child(3)').attr('href'),
              $(this).find('div :nth-child(4)').attr('href'),
              $(this).find('div :nth-child(5)').attr('href'),
              FormatDate(),
            ];
            valsArr.push(tmpValue);
          }
        });
    });
    for (vals of valsArr) {
      clog(666.401, '车系', vals[4]);
      await saveSeries(vals);
      clog(666.408, vals[4] + '车系爬完！');
      spider.sleep(config.tmSql);
      // 下面是进入具体的车系页面爬取具体的车型
      let seriess: any[] = [vals[0], vals[1], vals[2], vals[3], vals[4]];
      let cars: any[] = [];
      let carsVals: any[] = [];
      const urlSeries = 'https:' + vals[6];
      clog(666.501, '车系网址', urlSeries);
      await spider.getHtml(urlSeries, 'gb2312').then(async (res: any) => {
        $ = cheerio.load(res);
        //  爬取在售车型
        $('#specWrap-2 dl').each(function (this: any) {
          const sTitle = $(this).find('dt .spec-name span').text();
          $(this)
            .find('dd')
            .each(function (this: any) {
              const specUrl = $(this)
                .find('.spec-info .info-link :nth-child(4)')
                .attr('href');
              let specId;
              if (specUrl) {
                specId = specUrl.split('spec/')[1].split('/config.html')[0];
              }
              const tmpValue: any[] = [
                ...seriess,
                specId,
                $(this).find('.spec-name .name-param p .name').text(),
                sTitle,
                $(this).attr('data-sift1'),
                $(this)
                  .find(
                    '.spec-guidance .guidance-price .guidance-price__con span'
                  )
                  .text(),
                $(this)
                  .find('.spec-name .name-param :nth-child(2) :nth-child(1)')
                  .text(),
                $(this).attr('data-sift4'),
                1,
                FormatDate(),
              ];
              carsVals.push(tmpValue);
            });
        });
        // 爬取即将销售车型
        $('#specWrap-1 dl').each(function (this: any) {
          const sTitle = $(this).find('dt .spec-name span').text();
          $(this)
            .find('dd')
            .each(function (this: any) {
              const specUrl = $(this)
                .find('.spec-info .info-link :nth-child(4)')
                .attr('href');
              let specId;
              if (specUrl) {
                specId = specUrl.split('spec/')[1].split('/config.html')[0];
              }
              const tmpValue: any[] = [
                ...seriess,
                specId,
                $(this).find('.spec-name .name-param p .name').text(),
                sTitle,
                $(this).attr('data-sift1'),
                $(this)
                  .find(
                    '.spec-guidance .guidance-price .guidance-price__con span'
                  )
                  .text(),
                $(this)
                  .find('.spec-name .name-param :nth-child(2) :nth-child(1)')
                  .text(),
                $(this).attr('data-sift4'),
                2,
                FormatDate(),
              ];
              carsVals.push(tmpValue);
            });
        });
        // 爬取未售车型
        $('#specWrap-4 dl').each(function (this: any) {
          const sTitle = $(this).find('dt .spec-name span').text();
          $(this)
            .find('dd')
            .each(function (this: any) {
              const specUrl = $(this)
                .find('.spec-info .info-link :nth-child(4)')
                .attr('href');
              let specId;
              if (specUrl) {
                specId = specUrl.split('spec/')[1].split('/config.html')[0];
              }
              const tmpValue: any[] = [
                ...seriess,
                specId,
                $(this).find('.spec-name .name-param p .name').text(),
                sTitle,
                $(this).attr('data-sift1'),
                $(this)
                  .find(
                    '.spec-guidance .guidance-price .guidance-price__con span'
                  )
                  .text(),
                $(this)
                  .find('.spec-name .name-param :nth-child(2) :nth-child(1)')
                  .text(),
                $(this).attr('data-sift4'),
                3,
                FormatDate(),
              ];
              carsVals.push(tmpValue);
            });
        });
        // 爬取停售车型，按年份款式
        const years: any[] = [];
        $('#haltList li').each(function (this: any) {
          years.push([
            config.url.years.start +
              seriess[3] +
              config.url.years.middle +
              $(this).find('a').attr('data-yearid') +
              config.url.years.end,
            $(this).find('a').text(),
          ]);
        });
        // 循环年份，从api接口中爬取车型
        let urlSpec: any;
        for (urlSpec of years) {
          await spider.getHtml(urlSpec[0], 'gb2312').then(async (res: any) => {
            const yearRes = JSON.parse(res || '[]');
            yearRes.forEach((el: any) => {
              el.speclist.forEach((elc: any) => {
                // if (!elc.specid) {
                //   spider.sleep(100000000 * config.tmSql);
                // }
                const tmpValue: string[] = [
                  ...seriess,
                  elc.specid,
                  elc.specname,
                  el.name,
                  elc.syear + '款',
                  elc.price,
                  elc.driveform,
                  elc.gearbox,
                  0,
                  FormatDate(),
                ];
                carsVals.push(tmpValue);
              });
            });
            spider.sleep(config.tSql);
          });
          spider.sleep(config.tmHtml);
        }
      });
      for (cars of carsVals) {
        clog(666.601, '车型', cars[5], cars[6]);
        await saveCar(cars);
        clog(666.608, cars[6] + '车型爬完！');
        spider.sleep(config.tmHtml);
        await paCarParam(cars);
      }
    }
  });
}
async function paCarParam(cars: any[]) {
  const specId: any = cars[5];
  if (specId) {
    await spider
      .getHtml(config.url.car.start + specId, 'gb2312')
      .then(async (res: any) => {
        const params = JSON.parse(res || '{}')?.result?.paramtypeitems || [];
        if (params.length) {
          const fields = [
            'p_chexing_id',
            'p_gengxinshijian',
            'p_shouzimu',
            'p_pinpai',
            'p_pinpai_id',
            'p_pinpai_logo',
            'p_chexi',
            'p_chexi_id',
          ];
          let brandTitle: any;
          let brandImg: any;
          await db({
            type: 'select',
            table: 'as_brand',
            field: 'brandTitle,brandImg',
            where: 'brandId=' + cars[1],
          }).then((res: any) => {
            res.data.forEach((el: any) => {
              brandTitle = el.brandTitle;
              brandImg = el.brandImg;
            });
          });
          const values = [
            specId,
            FormatDate(),
            cars[0],
            brandTitle,
            cars[1],
            brandImg,
            cars[4],
            cars[3],
          ];
          params.forEach((elp: any) => {
            if (elp.paramitems && elp.paramitems.length) {
              elp.paramitems.forEach((el: any) => {
                const field = carFields[el.name];
                if (field && !fields.includes(field)) {
                  fields.push(field);
                  values.push(
                    el.valueitems[0].value
                      .replaceAll('(', '')
                      .replaceAll(')', '')
                  );
                }
              });
            }
          });
          await saveCarParam(fields, values);
          spider.sleep(config.tmHtml);
        }
      });
  }
}
function saveCar(vals: string[]) {
  const fields: string[] = [
    'firstLetter',
    'brandId',
    'brandGroupId',
    'seriesId',
    'seriesName',
    'specId',
    'specName',
    'specClass',
    'carYear',
    'carPrice',
    'driveform',
    'gearbox',
    'status',
    'tm',
  ];
  if (vals[5]) {
    return spider.run(
      saveDb(
        {
          type: 'select',
          table: 'as_car',
          field: 'specId',
          where: 'specId=' + vals[5] + '',
        },
        {
          type: 'update',
          table: 'as_car',
          set: 'tm="' + FormatDate() + '"',
        },
        {
          type: 'insert',
          table: 'as_car',
          field: fields.join(','),
          value: '"' + vals.join('","') + '"',
        }
      )
    );
  } else {
    return Promise.resolve();
  }
}
function saveSeries(vals: string[]) {
  const fields: any[] = [
    'firstLetter',
    'brandId',
    'brandGroupId',
    'seriesId',
    'seriesTitle',
    'seriesPrice',
    'urlTitle3',
    'urlPrice',
    'urlZhiPrice',
    'urlPic',
    'urlOld',
    'urlBbs',
    'urlTalk',
    'tm',
  ];
  if (vals[3]) {
    return spider.run(
      saveDb(
        {
          type: 'select',
          table: 'as_series',
          field: 'seriesId',
          where: 'seriesId=' + vals[3] + '',
        },
        {
          type: 'update',
          table: 'as_series',
          set: 'tm="' + FormatDate() + '"',
        },
        {
          type: 'insert',
          table: 'as_series',
          field: fields.join(','),
          value: '"' + vals.join('","') + '"',
        }
      )
    );
  } else {
    return Promise.resolve();
  }
}
function saveBrandGroup(vals: string[]) {
  const fields: string[] = [
    'firstLetter',
    'brandId',
    'brandGroupId',
    'brandGroupTitle',
    'urlBrand2',
    'tm',
  ];
  if (vals[2]) {
    return spider.run(
      saveDb(
        {
          type: 'select',
          table: 'as_brand_group',
          field: 'brandGroupId',
          where: 'brandGroupId=' + vals[2] + '',
        },
        {
          type: 'update',
          table: 'as_brand_group',
          set: 'tm="' + FormatDate() + '"',
        },
        {
          type: 'insert',
          table: 'as_brand_group',
          field: fields.join(','),
          value: '"' + vals.join('","') + '"',
        }
      )
    );
  } else {
    return Promise.resolve();
  }
}
function saveBrand(vals: string[]) {
  const fields: string[] = [
    'firstLetter',
    'brandId',
    'dlolr',
    'urlBrand',
    'imgBrand',
    'brandTitle',
    'brandImg',
    'tm',
  ];
  if (vals[1]) {
    return spider.run(
      saveDb(
        {
          type: 'select',
          table: 'as_brand',
          field: 'brandId',
          where: 'brandId=' + vals[1] + '',
        },
        {
          type: 'update',
          table: 'as_brand',
          set: 'tm="' + FormatDate() + '"',
        },
        {
          type: 'insert',
          table: 'as_brand',
          field: fields.join(','),
          value: '"' + vals.join('","') + '"',
        }
      )
    );
  } else {
    return Promise.resolve();
  }
}
function saveCarParam(fields: string[], values: string[]) {
  if (values[0]) {
    return spider.run(
      saveDb(
        {
          type: 'select',
          table: 'as_car_param',
          field: 'p_chexing_id',
          where: 'p_chexing_id="' + values[0] + '"',
        },
        {
          type: 'update',
          table: 'as_car_param',
          set: 'p_gengxinshijian="' + FormatDate() + '"',
        },
        {
          type: 'insert',
          table: 'as_car_param',
          field: fields.join(','),
          value: '"' + values.join('","') + '"',
        }
      )
    );
  } else {
    return Promise.resolve();
  }
}
function saveBrandImg(vals: string[]) {
  // const absPath = path.resolve(__dirname, config.dirDist + 'logo/' + vals[6]);
  const absPath = config.dirDist + 'logo/' + vals[6];
  return spider.run(spider.getImg('https:' + vals[4], absPath));
}

function saveDb(select: Idb, update: Idb, insert: Idb) {
  return new Promise((resolve, reject) => {
    try {
      db(select)
        .then((ress: any) => {
          if (ress.code === 909) {
            db(update)
              .then((res: any) => {
                clog(666.702, 'update', update.table);
                resolve(res);
              })
              .catch((err: any) => {
                clog(666.703, 'update', update);
                reject(err);
              });
          } else {
            db(insert)
              .then((res: any) => {
                clog(666.704, 'insert', update.table);
                resolve(res);
              })
              .catch((err: any) => {
                clog(666.705, 'insert', insert);
                reject(err);
              });
          }
        })
        .catch((err: any) => {
          clog(666.707, 'select', select);
          reject(err);
        });
    } catch (err) {
      clog(666.709, 'db', update.table);
      reject(err);
    }
  });
}
