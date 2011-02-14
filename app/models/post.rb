class Post < ActiveRecord::Base
  belongs_to :user
  scope :live, where({:live => true})
end
