class CreateComics < ActiveRecord::Migration
  def change
    create_table :comics do |t|
  	  t.string :title
   	  t.string :image
   	  t.text :description
      t.timestamps
    end
  end
end
