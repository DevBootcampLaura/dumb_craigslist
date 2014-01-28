class Post < ActiveRecord::Base
  belongs_to :category
  validates :admin, :uniqueness => true
end
