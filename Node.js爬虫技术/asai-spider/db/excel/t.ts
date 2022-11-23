import xlsx from "xlsx";

/**
 * 解析 excel 文件成 json 对象
 * @param {string} filePath
 */
export function parseExcel(filePath) {
    // 读取文件并解析工作簿
    const workBook = xlsx.readFile(filePath);
    // 获取第一个表格
    let name = workBook.SheetNames[0];
    // 解析表格
    return xlsx.utils.sheet_to_json(workBook.Sheets[name]);
}

/**
 * 将对象数据解析成 excel
 * @param {string} filePath 路径
 * @param {Array} list 数据
 * @param {string} sheetName 表格名字, 默认 Sheet1
 */
export function writeExcel(filePath, list, sheetName = "Sheet1") {
    // 新建工作簿
    const workBook = xlsx.utils.book_new();
    // 添加表格
    xlsx.utils.book_append_sheet(workBook, xlsx.utils.json_to_sheet(list), sheetName);
    // 输出文件
    xlsx.writeFile(workBook, filePath);
}