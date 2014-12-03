class CreateBooksUsers < ActiveRecord::Migration
  def change
    create_table :books_users do |t|
      t.references :book
      t.references :user
    end
  end
end
