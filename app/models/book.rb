class Book < ActiveRecord::Base
  belongs_to :author
  has_and_belongs_to_many :users
  
  validates :title, :publication_date, :author, presence: true
  validates :publication_date, numericality: true
  # Returns the full name of the book's author,
  # or nil if no author is defined yet.
  def author_name
    author.full_name if author
  end
end
