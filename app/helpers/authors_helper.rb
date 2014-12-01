module AuthorsHelper

  def authors_table(authors)
    render partial: 'authors_table', locals: {authors: authors}
  end
end
