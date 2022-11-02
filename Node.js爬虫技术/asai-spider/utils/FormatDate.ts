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
export default function (value = Date.now(), format = 'YY-MM-DD hh:mm:ss') {
  const formatNumber = (n: any) => `0${n}`.slice(-2);
  const date = new Date(value);
  const formatList: string[] = [
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
  const resultList: string[] = [
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
  for (let i = 0; i < resultList.length; i++) {
    format = format.replace(formatList[i], resultList[i]);
  }
  return format;
}
