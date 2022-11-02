import db from './mysql/db'; // MySQL数据库
// import db from './sqlite/db'; // SQLite数据库
import type Idb from './type';

function sqlFail(val: any) {
  return { code: 907, data: val };
}
function sqlEmpty(val: string) {
  return { code: 908, data: val };
}
function sqlSuccess(val: any) {
  return { code: 909, data: val };
}

export default function sqlDb(sql: Idb) {
  return new Promise((resolve, reject) => {
    db.query(sql, (err: any, result: any) => {
      if (err) {
        reject(sqlFail(err));
      } else if (!result || (Array.isArray(result) && !result.length)) {
        resolve(sqlEmpty(sql.type + ' is null'));
      } else {
        resolve(sqlSuccess(result));
      }
    });
  });
}
