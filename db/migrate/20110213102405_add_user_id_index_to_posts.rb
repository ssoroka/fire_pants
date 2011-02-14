class AddUserIdIndexToPosts < ActiveRecord::Migration
  def self.up
    add_index :posts, :user_id
  end

  def self.down
    remove_index :posts, :user_id
  end
end