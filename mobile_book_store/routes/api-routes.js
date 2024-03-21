const express =require('express');
const { getBooks, getBookById, addNewBook , editBook, deleteBook} = require('../services/book-dal');

const router = express.Router();

// A get route that fetches all books.
router.get("/books", async (request, response) => {
    if(DEBUG) console.log("get api books route.")
    try{
        let books = await getBooks();
        response.write(JSON.stringify(books));
        response.end()
    } catch{
        response.status(500).send('500 - Server error with data fetching.');
    }
})

// A get request that takes the id param from the url
router.get("/books/id/:bookid", async (request, response) => {
    if(DEBUG) console.log("post api books route.")
    try{
        let book = await getBookById(request.params.bookid);
        response.write(JSON.stringify(book));
        response.end()
    } catch{
        response.status(500).send('500 - Server error with data fetching.');
    }
})

// A post route that returns a book by book id. The id is sent through
// the post request does the same thing as the function above.
router.post("/books/id", async (request, response) => {
    if(DEBUG) console.log("post api books route.")
    try{
        let book = await getBookById(request.body.bookId);
        response.write(JSON.stringify(book));
        response.end()
    } catch{
        response.status(500).send('500 - Server error with data fetching.');
    }
})

// A put route that adds a book to the database
router.put("/books/add", async (request, response) => {
    if(DEBUG) console.log("post api books route.")
    try{
        let message = await addNewBook(request.body.isbn, request.body.title, request.body.year, request.body.author_id, request.body.genre_id);
        response.write(message);
        response.end()
    } catch{
        response.status(500).send('500 - Server error with data fetching.');
    }
})

// A patch route that edits a book from the given id.
router.patch("/books/edit", async (request, response) => {
    if(DEBUG) console.log("post api books route.")
    try{
        let message = await editBook(request.body.book_id, request.body.isbn, request.body.title, request.body.year, request.body.author_id, request.body.genre_id);
        response.write(message);
        response.end()
    } catch{
        response.status(500).send('500 - Server error with data fetching.');
    }
});

// A delete route that removes/archives book from database.
// I chose to archive the entry instead of remove it to avoid
// removing information from other tables, such as receipts.
router.delete("/books/delete", async (request, response) => {
    if(DEBUG) console.log("post api books route.")
    try{
        let message = await deleteBook(request.body.book_id);
        response.write(message);
        response.end()
    } catch{
        response.status(500).send('500 - Server error with data fetching.');
    }
});

router.get("/books/isbn/:isbn", (request, response) => {
    if(DEBUG) console.log("api book by isbn route.")
    response.send("the api route for book with isbn of "+request.params.isbn+" /.")
})

router.get("/books/author/:author", async (request, response) => {
    if(DEBUG) console.log("api books by auhtor route.")
    response.send("the api route for books with author of "+request.params.author+" /.")
})

router.get("/books/genre/:genre", (request, response) => {
    if(DEBUG) console.log("api books by genre route.")
    response.send("the api route for books with genre of "+request.params.genre+" /.")
})


router.get("/authors", (request, response) => {
    if(DEBUG) 
    console.log("api authors route.")
    response.send("the api route for authors /.")
})

router.get("/genres", (request, response) => {
    if(DEBUG) 
    console.log("api genres route.")
    response.send("the api route for genres /.")
})


module.exports = router;