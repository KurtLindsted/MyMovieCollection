class AddImageFilenameToMovies < ActiveRecord::Migration[6.1]
  def change
    add_column :movies, :image_filename, :string
  end
end
