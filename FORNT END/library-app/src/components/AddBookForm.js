import React, { useState } from 'react';
import './AddBookForm.css'; // Import the CSS file

const AddBookForm = () => {
  const [bookData, setBookData] = useState({
    Book_id: 0,
    Book_title: '',
    Book_author: '',
    Book_edition: 1,
    subject_id: 1,
  });

  const handleInputChange = (e) => {
    const { name, value } = e.target;
    setBookData({ ...bookData, [name]: value });
  };

  const handleFormSubmit = (e) => {
    e.preventDefault();

    // Assuming your backend API endpoint for adding books is '/your_backend_api/books'
    fetch('/your_backend_api/books', {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json',
      },
      body: JSON.stringify(bookData),
    })
      .then(response => response.json())
      .then(data => {
        console.log('Book added successfully:', data);
        // Optionally, you can update the state or take other actions upon successful insertion
      })
      .catch(error => console.error('Error adding book:', error));
  };

  return (
    <div className="add-book-form-container">
        <div className="add-book-box">
      <h1>Add Book</h1>
      <form onSubmit={handleFormSubmit} className="add-book-form">
        <label>
          Title:
          <input type="text" name="Book_title" value={bookData.Book_title} onChange={handleInputChange} />
        </label>
        <br />
        <label>
          Author:
          <input type="text" name="Book_author" value={bookData.Book_author} onChange={handleInputChange} />
        </label>
        <br />
        <label>
          Edition:
          <input type="number" name="Book_edition" value={bookData.Book_edition} onChange={handleInputChange} />
        </label>
        <br />
        <label>
          Subject ID:
          <input type="number" name="subject_id" value={bookData.subject_id} onChange={handleInputChange} />
        </label>
        <br />
        <button type="submit">Add Book</button>
      </form>
    </div>
    </div>
  );
};

export default AddBookForm;