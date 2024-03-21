const express =require('express');
const { getBooks, getBookById, addNewBook , editBook, deleteBook} = require('../services/book-dal');

const router = express.Router();

router.get('', (request, response) =>{
    response.render('index')
});

router.get('/books', async (request, response) =>{
    const books = await getBooks()
    response.render('books' , {books : books})
});

router.get('/books/edit/:bookid', async (request, response) =>{
    const book = await getBookById(request.params.bookid)
    if(book[0] != undefined){
        response.render('editbook' , {book : book[0]})
    }
    else{
        response.status(500).send('500 - Server error with data fetching.');
    }
});

// The patch/edit route
router.post('/books/edit/:bookid', async (request, response) =>{
    const message = await editBook(request.params.bookid, request.body.isbn, request.body.title, request.body.year, request.body.author_id, request.body.genre_id)
    console.log(message);
    if(message == "Operation Complete - Book has been edited"){
        response.render('editbookcomplete');
    }
    else{
        response.status(500).send('500 - Server error with data fetching.');
    }
});

router.get('/books/delete/:bookid', async (request, response) =>{
    if(DEBUG) console.log("get ui delete route.")
    const book = await getBookById(request.params.bookid)
    if(book[0] != undefined){
        response.render('deletebook' , {book : book[0]})
    }
    else{
        response.status(500).send('500 - Server error with data fetching.');
    }
});

router.post("/books/delete/:bookid", async (request, response) => {
    if(DEBUG) console.log("post ui delete route.")
    const message = await deleteBook(request.params.bookid)
    if(message == "Operation Complete - Book has been archived/deleted"){
        response.render('deletebookcomplete')
    }
    else{
        response.status(500).send('500 - Server error with data fetching.');
    }
});

router.get('/authors', (request, response) =>{
    response.render('authors')
});

router.get('/genres', (request, response) =>{
    response.render('genres')
});



module.exports = router;