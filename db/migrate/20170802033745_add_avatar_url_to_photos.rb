class AddAvatarUrlToPhotos < ActiveRecord::Migration[5.1]
  def change
    add_column :photos, :avatar_url, :string
  end
end
