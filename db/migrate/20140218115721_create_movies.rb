class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :moviename
      t.string :language
      t.integer :yor
      t.string :typeofmovie

      t.timestamps
    end
  end
end
