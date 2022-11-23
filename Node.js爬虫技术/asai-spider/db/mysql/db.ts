import type Idb from '../type';
function clog(...arg: any) {
  // console.log(...arg);
}

class DbMySQL {
  pool: any;
  config: any;
  constructor(config: any) {
    this.config = config;
    // 建立数据库连接池
    this.pool = require('mysql').createPool(config.sql);
  }

  joinSql(sql: Idb, type: 'where' | 'order' | 'value' | 'set' | 'field') {
    var val = sql[type];
    var tmp = '';
    if (Array.isArray(val)) {
      const len: number = val.length;
      if (len > 0) {
        if (type === 'where') {
          tmp = ' where ';
          let tmpx: any = '';
          for (let i = 0; i < len; i++) {
            let el = val[i];
            if (el === 'or' || el === 'and') {
              if (tmpx) {
                tmp += ')';
              }
              tmpx = el;
              i++;
              el = val[i];
              if (el === 'or' || el === 'and') {
                tmp += ' ' + tmpx;
                tmpx = el;
                i++;
                el = val[i];
              }
              tmp += ' (' + el[0] + ' ' + el[1] + ' ' + el[2];
            } else {
              tmp += ' ' + tmpx + ' ' + el[0] + ' ' + el[1] + ' ' + el[2];
            }
          }
          tmp += ')';
          return tmp;
        } else if (type === 'order') {
          tmp = ' order by';
          for (let i = 0; i < len; i++) {
            let el = val[i];
            if (i > 0) {
              tmp += ',';
            }
            tmp += ' ' + el[0] + ' ' + el[1];
          }
          return tmp;
        } else if (type === 'value') {
          tmp = ' values (';
          for (let i = 0; i < len; i++) {
            let el = val[i] as any[];
            if (i > 0) {
              tmp += '),(';
            }
            tmp += el.join(',');
          }
          tmp += ')';
          return tmp;
        } else if (type === 'set') {
          tmp = ' set ';
          for (let i = 0; i < len; i++) {
            let el = val[i] as [string, any][];
            if (i > 0) {
              tmp += ',';
            }
            tmp += el[0] + '=' + el[1];
          }
          return tmp;
        } else if (type === 'field') {
          tmp = ' (';
          for (let i = 0; i < len; i++) {
            let el = val[i] as string;
            if (i > 0) {
              tmp += ',';
            }
            tmp += el;
          }
          tmp += ')';
          return ' (' + val.join(',') + ')';
        }
      } else {
        if (['value', 'set'].includes(type)) {
          // 不能为空
        }
      }
    } else if (val) {
      if (type === 'where') {
        return ' where ' + val;
      } else if (type === 'order') {
        return ' order by ' + val;
      } else if (type === 'value') {
        return ' values (' + val + ')';
      } else if (type === 'set') {
        return ' set ' + val;
      } else if (type === 'field') {
        return ' (' + val + ')';
      }
    }
    return '';
  }
  makeSql(sql: Idb) {
    var sqls = sql.type;
    if (sqls === 'insert') {
      sqls += ' into';
      sqls += ' ' + sql.table;
      sqls += this.joinSql(sql, 'field');
      sqls += this.joinSql(sql, 'value');
    } else if (sqls === 'delete') {
      sqls += ' from ' + sql.table;
      sqls += this.joinSql(sql, 'where');
      sqls += this.joinSql(sql, 'order');
      sqls += sql.limit ? ' limit ' + sql.limit : '';
    } else if (sqls === 'update') {
      sqls += ' ' + sql.table;
      sqls += this.joinSql(sql, 'set');
      sqls += this.joinSql(sql, 'where');
      sqls += this.joinSql(sql, 'order');
      sqls += sql.limit ? ' limit ' + sql.limit : '';
    } else if (sqls === 'select') {
      sqls += sql.field ? ' ' + sql.field : ' *';
      sqls += ' from ' + sql.table;
      sqls += this.joinSql(sql, 'where');
      sqls += this.joinSql(sql, 'order');
      sqls += sql.limit ? ' limit ' + sql.limit : '';
    }
    clog(666.201, sqls);
    return sqls;
  }
  getErr(err: any) {
    var errs = err?.message || null;
    return errs;
  }
  getResult(rows: any) {
    var result = rows ?? null;
    return result;
  }
  query(sql: Idb, callback: any) {
    clog(666.101, sql, callback);
    this.pool.getConnection((error: any, connection: any) => {
      if (error) {
        clog(666.102, error, connection);
      } else {
        connection.query(this.makeSql(sql), (err: any, rows: any) => {
          clog(666.103, err, rows);
          callback(this.getErr(err), this.getResult(rows));
          connection.release();
        });
      }
    });
  }
  sqlFail(val: any) {
    return { code: 907, data: val };
  }
  sqlEmpty(val: string) {
    return { code: 908, data: val };
  }
  sqlSuccess(val: any) {
    return { code: 909, data: val };
  }
  sqlDb(sql: Idb) {
    return new Promise((resolve, reject) => {
      try {
        this.query(sql, (err: any, result: any) => {
          if (err) {
            reject(this.sqlFail(err));
          } else if (!result || (Array.isArray(result) && !result.length)) {
            resolve(this.sqlEmpty(sql.type + ' is null'));
          } else {
            resolve(this.sqlSuccess(result));
          }
        });
      } catch (err) {
        reject(err);
      }
    });
  }
}
export default DbMySQL;
