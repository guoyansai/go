const https: any = require('https');
const path: any = require('path');
const fs: any = require('fs');

// 将url网址转变成file名
function urlToFileName(url: string) {
  let urlArr = url.split('/');
  return urlArr[urlArr.length - 1];
}

// 将url网址转变成file相对位置
function urlToFile(url: string) {
  let urlArr = url.split('/');
  if (urlArr.length && !urlArr[1]) {
    urlArr.splice(0, 3);
  }
  return urlArr.join('/');
}

// 将文件路径改为文件夹路径
function fileToDir(filePath: string) {
  let pathArr = filePath.split('/');
  if (
    pathArr[pathArr.length - 1] &&
    pathArr[pathArr.length - 1].includes('.')
  ) {
    pathArr.pop();
  }
  return pathArr.join('/') + '/';
}

// 判断文件/文件夹是否存在
function hasPath(filePath: string) {
  const absPath = path.resolve(__dirname, filePath);
  return new Promise<any>((resolve, reject) => {
    try {
      fs.exists(absPath, (exists: any) => {
        resolve({ data: !!exists, path: absPath });
      });
    } catch (err) {
      reject({ data: err, path: absPath });
    }
  });
}
// 判断是否存在文件/文件夹，并返回路径
function needNew(filePath: string) {
  return new Promise<any>((resolve, reject) => {
    hasPath(filePath)
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
function dirMake(dirPath: string) {
  return new Promise((resolve, reject) => {
    needNew(dirPath)
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
function reSave(saveFile: string, re: boolean = false) {
  return new Promise<void>((resolve, reject) => {
    needNew(saveFile)
      .then((res) => {
        dirMake(fileToDir(saveFile))
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
function getHtml(url: string) {
  return new Promise((resolve, reject) => {
    try {
      https.get(url, (res: any) => {
        let html = '';
        res.on('data', (chunk: any) => {
          html += chunk;
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
function getImg(url: string, saveFile: string, re: boolean = false) {
  return new Promise((resolve, reject) => {
    try {
      reSave(saveFile, re)
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
          reject(`图片已存在${err}`);
        });
    } catch (err) {
      reject(err);
    }
  });
}
export {
  https,
  path,
  fs,
  urlToFileName,
  urlToFile,
  fileToDir,
  hasPath,
  needNew,
  dirMake,
  reSave,
  getHtml,
  getImg,
};
