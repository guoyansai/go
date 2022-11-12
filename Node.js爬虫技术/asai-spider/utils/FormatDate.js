"use strict";
exports.__esModule = true;
/**
 * 格式化日期
 * @param {string | number | Date} value 指定日期
 * @param {string} format 格式化的规则
 * @example
 * ```js
 * formatDate();
 * formatDate(1603264465956);
 * formatDate(1603264465956, "h:m:s");
 * formatDate(1603264465956, "Y年M月D日");
 * ```
 */
function default_1(value, format) {
    if (value === void 0) { value = Date.now(); }
    if (format === void 0) { format = 'YY-MM-DD hh:mm:ss'; }
    var formatNumber = function (n) { return "0".concat(n).slice(-2); };
    var date = new Date(value);
    var formatList = [
        'YY',
        'Y',
        'MM',
        'M',
        'DD',
        'D',
        'hh',
        'h',
        'mm',
        'm',
        'ss',
        's',
    ];
    var resultList = [
        date.getFullYear().toString(),
        date.getFullYear().toString().slice(-2),
        formatNumber(date.getMonth() + 1),
        (date.getMonth() + 1).toString(),
        formatNumber(date.getDate()),
        date.getDate().toString(),
        formatNumber(date.getHours()),
        date.getHours().toString(),
        formatNumber(date.getMinutes()),
        date.getMinutes().toString(),
        formatNumber(date.getSeconds()),
        date.getSeconds().toString(),
    ];
    for (var i = 0; i < resultList.length; i++) {
        format = format.replace(formatList[i], resultList[i]);
    }
    return format;
}
exports["default"] = default_1;
