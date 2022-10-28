const sqlite3 = require("sqlite3").verbose(); // 引入sqlite3
var db;

// 创建一个名叫"db"的数据库
db = new sqlite3.Database("db.db", function(err) {
  if (err) throw err;
});

// 新建一个叫user的表 初始化字段“id , name , password”
db.run(`create table user (id INT,name VARCHAR,password VARCHAR)`, function(err) {
    if (err) throw err;
    console.log("Create Table Success!");
});

// 插入一条数据  (1,"admin","admin")
db.run(`insert into user values (1,"admin","admin")`, function(err) {
    if (err) throw err;
    console.log("Insert Data Success!");
});
