#ログイン関連
class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  #UserモデルにBookモデルのアソシエーション       
  has_many :books, dependent: :destroy
  #refileで画像投稿
  attachment :profile_image
end

#----------------------memo---------------------
#:database_authenticatable（パスワードの正確性検証）
#:registerable（ユーザ登録や編集/削除）
#:recoverable（パスワードをリセット）
#:rememberable（ログイン情報保存）
#:validatable（emailのフォーマットなどのバリデーション）



