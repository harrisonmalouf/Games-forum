class Post < ApplicationRecord
  belongs_to :user, :optional => true #under the circumstances that we have no user connected to a post we can 
  belongs_to :game, :optional => true
end
