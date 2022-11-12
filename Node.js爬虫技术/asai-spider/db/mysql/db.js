"use strict";
exports.__esModule = true;
function clog() {
    var arg = [];
    for (var _i = 0; _i < arguments.length; _i++) {
        arg[_i] = arguments[_i];
    }
    // console.log(...arg);
}
var DbMySQL = /** @class */ (function () {
    function DbMySQL(config) {
        this.config = config;
        // 建立数据库连接池
        this.pool = require('mysql').createPool(config.sql);
    }
    DbMySQL.prototype.joinSql = function (sql, type) {
        var val = sql[type];
        if (Array.isArray(val)) {
            if (val.length) {
                if (type === 'where') {
                    return ' where ' + val.join(' and ');
                }
                else if (type === 'order') {
                    return ' order by ' + val.join(',');
                }
                else if (type === 'value') {
                    return ' values (' + val.join('),(') + ')';
                }
                else if (type === 'set') {
                    return ' set ' + val.join(',');
                }
                else if (type === 'field') {
                    return ' (' + val.join(',') + ')';
                }
            }
            else {
                if (['value', 'set'].includes(type)) {
                    // 不能为空
                }
            }
        }
        else if (val) {
            if (type === 'where') {
                return ' where ' + val;
            }
            else if (type === 'order') {
                return ' order by ' + val;
            }
            else if (type === 'value') {
                return ' values (' + val + ')';
            }
            else if (type === 'set') {
                return ' set ' + val;
            }
            else if (type === 'field') {
                return ' (' + val + ')';
            }
        }
        return '';
    };
    DbMySQL.prototype.makeSql = function (sql) {
        var sqls = sql.type;
        if (sqls === 'insert') {
            sqls += ' into';
            sqls += ' ' + sql.table;
            sqls += this.joinSql(sql, 'field');
            sqls += this.joinSql(sql, 'value');
        }
        else if (sqls === 'delete') {
            sqls += ' from ' + sql.table;
            sqls += this.joinSql(sql, 'where');
            sqls += this.joinSql(sql, 'order');
            sqls += sql.limit ? ' limit ' + sql.limit : '';
        }
        else if (sqls === 'update') {
            sqls += ' ' + sql.table;
            sqls += this.joinSql(sql, 'set');
            sqls += this.joinSql(sql, 'where');
            sqls += this.joinSql(sql, 'order');
            sqls += sql.limit ? ' limit ' + sql.limit : '';
        }
        else if (sqls === 'select') {
            sqls += sql.field ? ' ' + sql.field : ' *';
            sqls += ' from ' + sql.table;
            sqls += this.joinSql(sql, 'where');
            sqls += this.joinSql(sql, 'order');
            sqls += sql.limit ? ' limit ' + sql.limit : '';
        }
        clog(666.201, sqls);
        return sqls;
    };
    DbMySQL.prototype.getErr = function (err) {
        var errs = (err === null || err === void 0 ? void 0 : err.message) || null;
        return errs;
    };
    DbMySQL.prototype.getResult = function (rows) {
        var result = rows !== null && rows !== void 0 ? rows : null;
        return result;
    };
    DbMySQL.prototype.query = function (sql, callback) {
        var _this = this;
        clog(666.101, sql, callback);
        this.pool.getConnection(function (error, connection) {
            if (error) {
                clog(666.102, error, connection);
            }
            else {
                connection.query(_this.makeSql(sql), function (err, rows) {
                    clog(666.103, err, rows);
                    callback(_this.getErr(err), _this.getResult(rows));
                    connection.release();
                });
            }
        });
    };
    DbMySQL.prototype.sqlFail = function (val) {
        return { code: 907, data: val };
    };
    DbMySQL.prototype.sqlEmpty = function (val) {
        return { code: 908, data: val };
    };
    DbMySQL.prototype.sqlSuccess = function (val) {
        return { code: 909, data: val };
    };
    DbMySQL.prototype.sqlDb = function (sql) {
        var _this = this;
        return new Promise(function (resolve, reject) {
            try {
                _this.query(sql, function (err, result) {
                    if (err) {
                        reject(_this.sqlFail(err));
                    }
                    else if (!result || (Array.isArray(result) && !result.length)) {
                        resolve(_this.sqlEmpty(sql.type + ' is null'));
                    }
                    else {
                        resolve(_this.sqlSuccess(result));
                    }
                });
            }
            catch (err) {
                reject(err);
            }
        });
    };
    return DbMySQL;
}());
exports["default"] = DbMySQL;
