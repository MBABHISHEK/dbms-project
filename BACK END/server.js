const express = require('express');
const mysql = require('mysql');

const app = express();

const db = mysql.createConnection({
  host: 'localhost',
  user: 'username',
  password: 'password',
  database: 'database_name'
});

db.connect((err) => {
  if (err) {
    throw err;
  }
  console.log('Connected to database');
});

app.get('/', (req, res) => {
  db.query('SELECT * FROM your_table_name', (err, result) => {
    if (err) {
      throw err;
    }
    res.send(`
      <!DOCTYPE html>
      <html>
      <head>
          <title>Database Content</title>
      </head>
      <body>
          <h2>Database Content</h2>
          <table border="1">
              <tr>
                  <th>ID</th>
                  <th>Name</th>
                  <th>Email</th>
              </tr>
              ${result.map(row => `
                  <tr>
                      <td>${row.id}</td>
                      <td>${row.name}</td>
                      <td>${row.email}</td>
                  </tr>`).join('')}
          </table>
      </body>
      </html>
    `);
  });
});

const port = 3000;
app.listen(port, () => {
  console.log(`Server running on port ${port}`);
});
