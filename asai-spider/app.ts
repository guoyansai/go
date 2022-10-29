import db from './db/mysql/db';
var a = 'select';
if (a === 'insert') {
  db.query(
    {
      type: 'insert',
      table: 'user',
      field: 'userName,userPassword,userType',
      // value: '"asai","123456",8',
      value: ['"asai","123456",8','"阿萨","分sss",88'],
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
} else if (a === 'select') {
  db.query(
    {
      type: 'select',
      table: 'user',
      field: '*',
      limit: 10,
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
