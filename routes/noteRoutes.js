const express = require('express');
const router = express.Router();
const Note = require('../models/Note');

// Get all notes
router.get('/', async (req, res) => {
  const notes = await Note.findAll();
  res.json(notes);
});

// Create a new note
router.post('/', async (req, res) => {
  const { title, content } = req.body;
  const note = await Note.create({ title, content });
  res.json(note);
});

// Get a note by ID
router.get('/:id', async (req, res) => {
  const note = await Note.findByPk(req.params.id);
  if (note) {
    res.json(note);
  } else {
    res.status(404).send('Note not found');
  }
});

// Update a note by ID
router.put('/:id', async (req, res) => {
  const { title, content } = req.body;
  const note = await Note.findByPk(req.params.id);
  if (note) {
    note.title = title;
    note.content = content;
    await note.save();
    res.json(note);
  } else {
    res.status(404).send('Note not found');
  }
});

// Delete a note by ID
router.delete('/:id', async (req, res) => {
  const note = await Note.findByPk(req.params.id);
  if (note) {
    await note.destroy();
    res.send('Note deleted');
  } else {
    res.status(404).send('Note not found');
  }
});

module.exports = router;
