class CreatePosts < ActiveRecord::Migration
  def self.up
    create_table :posts do |t|
      t.string 'title'
      t.text 'content'
      t.references 'user'
      t.boolean 'live'
      t.datetime 'posted_at'
      t.integer 'views_count', :default => 0
      t.timestamps
    end
  end

  def self.down
    drop_table :posts
  end
end
