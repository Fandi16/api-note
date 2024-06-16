const { Sequelize } = require('sequelize');

// Menggunakan environment variables untuk konfigurasi database
const sequelize = new Sequelize(
  process.env.DB_NAME || 'note_todo_db', 
  process.env.DB_USER || 'root', 
  process.env.DB_PASSWORD || '', 
  {
    host: process.env.DB_HOST || 'localhost',
    dialect: 'mysql',
    logging: false,
  }
);

sequelize.authenticate()
  .then(() => console.log('Database connected...'))
  .catch(err => console.log('Error: ' + err));

module.exports = sequelize;
