import type Idb from '../type';

var sqlite3 = require('sqlite3').verbose();

// sqlites数据库地址
var path = require('path');
var sqliteDbPath = path.resolve(__dirname, './sqlite3.db');

// 打开sqlites数据库
var sqlite3Connection = new sqlite3.Database(sqliteDbPath, (err: any) => {
  if (err) throw err;
});

class DbSQLite3 {
  pool: any;
  constructor(pool: any) {
    this.pool = pool;
  }
  joinSql(sql: Idb, type: 'where' | 'order' | 'value' | 'set' | 'field') {
    var val = sql[type];
    if (Array.isArray(val)) {
      if (val.length) {
        if (type === 'where') {
          return ' where ' + val.join(' and ');
        } else if (type === 'order') {
          return ' order by ' + val.join(',');
        } else if (type === 'value') {
          return ' values (' + val.join('),(') + ')';
        } else if (type === 'set') {
          return ' set ' + val.join(',');
        } else if (type === 'field') {
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
    // sqlite查询sql的时候，有些指定的语句不支持order与limit
    var sqls = sql.type;
    if (sqls === 'insert') {
      sqls += ' into';
      sqls += ' ' + sql.table;
      sqls += this.joinSql(sql, 'field');
      sqls += this.joinSql(sql, 'value');
    } else if (sqls === 'delete') {
      sqls += ' from ' + sql.table;
      sqls += this.joinSql(sql, 'where');
    } else if (sqls === 'update') {
      sqls += ' ' + sql.table;
      sqls += this.joinSql(sql, 'set');
      sqls += this.joinSql(sql, 'where');
    } else if (sqls === 'select') {
      sqls += sql.field ? ' ' + sql.field : ' *';
      sqls += ' from ' + sql.table;
      sqls += this.joinSql(sql, 'where');
      sqls += this.joinSql(sql, 'order');
      sqls += sql.limit ? ' limit ' + sql.limit : '';
    }
    console.log(666.111, sqls);
    return sqls;
  }
  getErr(err: any) {
    var errs = err?.message || null;
    return errs;
  }
  getResult(rows: any) {
    var result = rows ?? 'OK';
    return result;
  }
  query(sql: Idb, callback: any) {
    console.log(666.101, sql, callback);
    if (sql.type === 'select') {
      if (sql.where && (!sql.limit || sql.limit === 1) && false) {
        // 直接返回一个obj
        this.pool.each(this.makeSql(sql), (err: any, rows: any) => {
          console.log(666.103, err, rows);
          callback(this.getErr(err), this.getResult(rows));
        });
      } else {
        this.pool.all(this.makeSql(sql), (err: any, rows: any) => {
          console.log(666.104, err, rows);
          callback(this.getErr(err), this.getResult(rows));
        });
      }
    } else {
      this.pool.run(this.makeSql(sql), (err: any, rows: any) => {
        console.log(666.105, err, rows);
        callback(this.getErr(err), this.getResult(rows));
      });
    }
  }
}
export default new DbSQLite3(sqlite3Connection);
