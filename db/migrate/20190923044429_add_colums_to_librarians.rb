class AddColumsToLibrarians < ActiveRecord::Migration[5.2]
  def change
    add_column :librarians, :email, :string, unique: true
    add_column :librarians, :password, :string
    add_column :librarians, :libraryId, :integer
  end
end
