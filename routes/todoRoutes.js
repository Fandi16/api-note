const express = require('express');
const router = express.Router();
const Todo = require('../models/Todo');

// Get all todos
router.get('/', async (req, res) => {
  const todos = await Todo.findAll();
  res.json(todos);
});

// Create a new todo
router.post('/', async (req, res) => {
  const { task, dueDate } = req.body;
  const todo = await Todo.create({ task, dueDate });
  res.json(todo);
});

// Get a todo by ID
router.get('/:id', async (req, res) => {
  const todo = await Todo.findByPk(req.params.id);
  if (todo) {
    res.json(todo);
  } else {
    res.status(404).send('Todo not found');
  }
});

// Update a todo by ID
router.put('/:id', async (req, res) => {
  const { task, completed, dueDate } = req.body;
  const todo = await Todo.findByPk(req.params.id);
  if (todo) {
    todo.task = task;
    todo.completed = completed;
    todo.dueDate = dueDate;
    await todo.save();
    res.json(todo);
  } else {
    res.status(404).send('Todo not found');
  }
});

// Delete a todo by ID
router.delete('/:id', async (req, res) => {
  const todo = await Todo.findByPk(req.params.id);
  if (todo) {
    await todo.destroy();
    res.send('Todo deleted');
  } else {
    res.status(404).send('Todo not found');
  }
});

module.exports = router;
