import db from './db';

db({
  type: 'insert',
  table: 'user',
  field: 'userName,userPassword,userType',
  // value: '"asai","123456",8',
  value: ['"asai11","123456",8', '"阿萨33","分s444ss",88', '"阿55","分sss",88'],
})
  .then((res) => {
    console.log(666.601, res);
  })
  .catch((err) => {
    console.log(666.602, err);
  });
