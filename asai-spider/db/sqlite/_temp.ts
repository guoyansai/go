import db from './db';

// 假设我们有个数据表users，有id、userName、userPassword、userType四个字段
var a = 'select';
// a = 'insert';
if (a === 'delete') {
  db.query(
    {
      type: 'delete',
      table: 'user',
      where: 'userName="SSSS"',
      limit: 2,
      order: 'id desc',
    },
    (err: any, result: any) => {
      if (err) {
        console.log(666.201, err);
      } else {
        console.log(666.202, result);
        if (result) {
          console.log(666.2022, '删除结果：' + result);
        }
      }
    }
  );
} else if (a === 'update') {
  db.query(
    {
      type: 'update',
      table: 'user',
      // set: 'userName="GGGG"',
      set: ['userName="SSSS"', 'userPassword="FFFF"'],
      where: 'id=10',
      limit: 3,
      order: 'id desc',
    },
    (err: any, result: any) => {
      if (err) {
        console.log(666.201, err);
      } else {
        console.log(666.202, result);
        if (result) {
          console.log(666.2022, '修改结果：' + result);
        }
      }
    }
  );
} else if (a === 'insert') {
  db.query(
    {
      type: 'insert',
      table: 'user',
      field: 'userName,userPassword,userType',
      // value: '"asai","123456",8',
      value: ['"asai","123456",8', '"阿萨","分sss",88', '"阿萨","分sss",88'],
    },
    (err: any, result: any) => {
      if (err) {
        console.log(666.201, err);
      } else {
        console.log(666.202, result);
        if (result) {
          console.log(666.2022, '增加结果：' + result);
        }
      }
    }
  );
} else if (a === 'select') {
  db.query(
    {
      type: 'select',
      table: 'user',
      field: '*',
      where: 'id>5',
      limit: 1,
      order: 'id desc',
    },
    (err: any, result: any) => {
      if (err) {
        console.log(666.201, err);
      } else {
        console.log(666.202, result?.length, result);
        if (result && result.length) {
          result.forEach((element: any) => {
            console.log(666.2022, element?.id, element);
          });
        }
      }
    }
  );
}
