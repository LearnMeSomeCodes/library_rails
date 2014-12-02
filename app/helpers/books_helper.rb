module BooksHelper

  def render_books_table(books)
    if books.any?
      render partial: "books_table", locals: {books: books}
    end
  end
end
