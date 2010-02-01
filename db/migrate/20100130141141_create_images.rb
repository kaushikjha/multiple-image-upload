class CreateImages < ActiveRecord::Migration
  def self.up
    create_table :images do |t|
      t.integer   :user_id
      t.string	  :title
      t.string    :avatar_file_name
      t.string    :avatar_content_type
      t.integer   :avatar_file_size
      t.datetime  :avatar_updated_at
      t.timestamps
    end
    add_index :images, :user_id 
  end

  def self.down
    drop_table :images
  end
end
