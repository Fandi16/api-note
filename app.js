const express = require('express');
const bodyParser = require('body-parser');
const sequelize = require('./config/db');
const noteRoutes = require('./routes/noteRoutes');
const todoRoutes = require('./routes/todoRoutes');
const cors = require('cors');

const app = express();
app.use(cors());
app.use(bodyParser.json());

// Routes
app.use('/notes', noteRoutes);
app.use('/todos', todoRoutes);

// Sync database
sequelize.sync();

app.listen(3000, () => {
  console.log('Server is running on port 3000');
});

