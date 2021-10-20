class Book < ApplicationRecord
  #UserモデルとBookモデルのアソシエーション 
  belongs_to :user
  attachment :profile_image
  
  #投稿に関するバリテーション
  validates :title, presence: true
  validates :body, presence: true

end
