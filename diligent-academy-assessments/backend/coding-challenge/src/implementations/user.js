export class User {
    constructor() {
        this.books = [];
    }

    borrow(book, library) {
        try {
            this.books.push(book);     //add book to books 
            library.removeBook(book);  // remove book the library
            return book;

        } catch (e) {
            throw new Error('Can not add book to the user booklist!', e);
        }

    }

    hasBook(book) {
        try {

            this.books.filter(name => name === book.name); // searching the book in the books Array
            return true;

        } catch (e) {
            throw new Error('This book is not borrowed !', e);
        }
    }


    return(book, library) {
        try {
            const bookIndex = this.books.indexOf(book);  // Searching the bookIndex
            if (bookIndex !== -1) {
                this.books.splice(bookIndex, 1);         // remove the book
                library.addBook(book);                   // add to t he library
            }
            return false;

        } catch {
            return true;
        }
    }


    getBookNames() {
        try {

            return this.books.map(book => book.name)  // Searching the book.name

        } catch (e) {
            throw new Error('This book not avaiable !', e);
        }

    }
}
