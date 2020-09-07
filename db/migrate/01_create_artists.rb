class CreateArtists < ActiveRecord::Migration[5.2]


  def up #define the code to execute when the migration is run
  end

  def down #define the code to execute when the migration is rolled back
  end

  def change #is more common for basic migrations
    #works for majority of cases where AR knows how to reverse the migration
    #automatically
    create_table :artists do |t|
      #we can also use other methods like remove_table, rename_table, remove_column, add column, etc.
      t.string :name
      t.string :genre
      t.integer :age
      t.string :hometown
    end
  end


end

