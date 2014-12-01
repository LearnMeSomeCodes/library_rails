module AuthorsHelper

  def authors_table(authors)
    if authors.any?
      render partial: 'authors_table', locals: {authors: authors}
    end
  end
end
