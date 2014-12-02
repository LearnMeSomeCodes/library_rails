module AuthorsHelper

  def render_authors_table(authors)
    render partial: "authors_table", locals: {authors: authors}
  end

end
