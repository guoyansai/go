var mysql = require('mysql');
var pool = mysql.createPool({
  host: 'localhost',
  user: 'root',
  password: '909pub',
  port: 3306,
  database: 'nodejsblog',
});
interface Idb {
  type: string;
  table: string;
  field?: string | string[];
  value?: string | string[];
  where?: string | string[];
  order?: string | string[];
  top?: number;
  limit?: number;
}
class DbMySQL {
  pool: any;
  constructor(pool: any) {
    this.pool = pool;
  }
  joinSql(sql: Idb) {
    var sqls = sql.type;
    if (sqls === 'insert') {
      sqls += ' into';
      sqls += ' ' + sql.table;
      sqls += ' (' + sql.field + ')';
      if (Array.isArray(sql.value)) {
        if (sql.value.length) {
          sqls += ' values (';
          sqls += sql.value.join('),(');
          sqls += ')';
        } else {
          // 不能为空
        }
      } else {
        sqls += ' values (' + sql.value + ')';
      }
    } else if (sqls === 'delete') {
    } else if (sqls === 'update') {
    } else if (sqls === 'select') {
      sqls += sql.top ? ' top ' + sql.top : '';
      sqls += sql.field ? ' ' + sql.field : ' *';
      sqls += ' from ' + sql.table;
      sqls += sql.where ? ' where ' + sql.where : '';
      sqls += sql.order ? ' order by ' + sql.order : '';
      sqls += sql.limit ? ' limit ' + sql.limit : '';
    }

    console.log(666.103, sqls);
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
    console.log(666.101, sql, callback);
    this.pool.getConnection((error: any, connection: any) => {
      if (error) {
        console.log(666.102, error, connection);
      } else {
        connection.query(this.joinSql(sql), (err: any, rows: any) => {
          console.log(666.104, err, rows);
          callback(this.getErr(err), this.getResult(rows));
          connection.release();
        });
      }
    });
  }
}
export default new DbMySQL(pool);
