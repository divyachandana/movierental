class Addstatustomovies < ActiveRecord::Migration
  def change
    add_column :movies, :status, :boolean
    
  end
end
