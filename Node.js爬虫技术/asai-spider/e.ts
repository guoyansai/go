// const path: any = require('path');
import dbInit from './db';
import type Idb from './db/type';
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
    dbc = new dbInit.excelDb(config);
  } else if (config.sql.user === 'sqlite3') {
    dbc = new dbInit.sqliteDb(config);
  } else {
    dbc = new dbInit.mysqlDb(config);
  }
  db = (sql: Idb) => {
    return dbc.sqlDb(sql);
  };
  await db({
    type: 'select',
    table: 'as_car_param_cn_to_en',
    field: 'cn_name,en_name',
  }).then((res: any) => {
    res.data.forEach((el: any) => {
      carFields[el.cn_name] = el.en_name;
    });
  });
}

clog(666.22, 'aaa');
