import type Idb from '../type';

function clog(...arg: any) {
  // console.log(...arg);
}

var mysql = require('mysql');
// 建立数据库连接池
var pool = mysql.createPool({
  host: 'localhost', // ip或域名
  port: 3306, // 端口
  user: 'root', // 登录账户
  password: '909pub', // 登录密码
  database: 'nodejsblog', // 数据库名
});

class DbMySQL {
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
}
export default new DbMySQL(pool);
