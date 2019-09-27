class AddFkToBooks < ActiveRecord::Migration[5.2]
  def change
    add_foreign_key :books,:libraries
    add_foreign_key :libraries, :universities
  end
end
