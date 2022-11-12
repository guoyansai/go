const https: any = require('https');
const fs: any = require('fs');
const iconv: any = require('iconv-lite');

class pa {
  constructor() {}
  /**
   * 睡眠模拟函数
   * @param  {Number} numberMillis 毫秒
   */
  sleep(numberMillis: number) {
    let now = new Date();
    const exitTime = now.getTime() + numberMillis;
    while (true) {
      now = new Date();
      if (now.getTime() > exitTime) return;
    }
  }

  // 将url网址转变成file名
  urlToFileName(url: string) {
    let urlArr = url.split('/');
    return urlArr[urlArr.length - 1];
  }

  // 将url网址转变成file相对位置
  urlToFile(url: string) {
    let urlArr = url.split('/');
    if (urlArr.length && !urlArr[1]) {
      urlArr.splice(0, 3);
    }
    return urlArr.join('/');
  }

  // 将文件路径改为文件夹路径
  fileToDir(filePath: string) {
    let pathArr = filePath.split('\\');
    if (
      pathArr[pathArr.length - 1] &&
      pathArr[pathArr.length - 1].includes('.')
    ) {
      pathArr.pop();
    }
    return pathArr.join('\\') + '\\';
  }

  // 判断文件/文件夹是否存在
  hasPath(filePath: string) {
    return new Promise<any>((resolve, reject) => {
      try {
        fs.exists(filePath, (exists: any) => {
          resolve({ data: !!exists, path: filePath });
        });
        // reject({ data: '默认直接创建，不走文件创建！', path: filePath });
      } catch (err) {
        reject({ data: err, path: filePath });
      }
    });
  }
  // 判断是否存在文件/文件夹，并返回路径
  needNew(filePath: string) {
    return new Promise<any>((resolve, reject) => {
      this.hasPath(filePath)
        .then((res) => {
          if (res.data) {
            reject(res.path);
          } else {
            resolve(res.path);
          }
        })
        .catch((err) => {
          resolve(err.path);
        });
    });
  }
  // 不存在的文件夹，直接创建
  dirMake(dirPath: string) {
    return new Promise((resolve, reject) => {
      this.needNew(dirPath)
        .then((res: string) => {
          try {
            fs.mkdir(res, { recursive: true }, (err: any) => {
              if (err) {
                reject(res);
              } else {
                resolve(res);
              }
            });
          } catch (err) {
            reject(res);
          }
        })
        .catch((err: string) => {
          resolve(err);
        });
    });
  }

  // 不存在的文件保存，存在的文件判断处理
  reSave(saveFile: string, re: boolean = false) {
    return new Promise<void>((resolve, reject) => {
      this.needNew(saveFile)
        .then((res) => {
          this.dirMake(this.fileToDir(saveFile))
            .then(() => {
              resolve(res);
            })
            .catch((err) => {
              reject(err);
            });
        })
        .catch((err) => {
          if (re) {
            resolve(err);
          } else {
            reject(err);
          }
        });
    });
  }

  // 获取 html 页面
  getHtml(url: string, charset: string = 'utf-8') {
    return new Promise((resolve, reject) => {
      try {
        https.get(url, (res: any) => {
          let html = '';
          res.on('data', (chunk: any) => {
            html += iconv.decode(chunk, charset); // 处理一些特殊的gb2312编码
          });
          res.on('end', () => {
            resolve(html);
          });
        });
      } catch (err) {
        reject(err);
      }
    });
  }

  // 获取 img 图片
  getImg(url: string, saveFile: string, re: boolean = false) {
    return new Promise((resolve, reject) => {
      try {
        this.reSave(saveFile, re)
          .then((filePath) => {
            https.get(url, (res: any) => {
              res.setEncoding('binary');
              let imgBin = '';
              res.on('data', (chunk: any) => {
                imgBin += chunk;
              });
              res.on('end', () => {
                fs.writeFile(filePath, imgBin, 'binary', (err: any) => {
                  if (err) {
                    reject(err);
                  } else {
                    resolve(`图片成功保存到${filePath}`);
                  }
                });
              });
            });
          })
          .catch((err) => {
            resolve(`图片已存在 - ${err}`);
          });
      } catch (err) {
        reject(err);
      }
    });
  }
  run(fn: any) {
    try {
      return fn;
    } catch (e) {
      return;
    }
  }
}
const spider = new pa();

export default spider;
module.exports = spider;
