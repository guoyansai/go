var connection = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: '909pub',
  port: 3306,
  database: 'nodejsblog',
});

// 连接
connection.connect(function (err) {
  if (err) {
    console.log('[query] - :' + err);
    return;
  }
  console.log('[connection connect]  succeed!');
});

// 查询数据
connection.query('SELECT 1 + 1 AS solution', function (error, results, fields) {
  if (error) throw error;
  console.log('The solution is: ', results[0].solution);
});

//关闭连接
connection.end(function (err) {
  if (err) {
    return;
  }
  console.log('[connection end] succeed!');
});
