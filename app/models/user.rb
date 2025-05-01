class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

   validates :nickname, presence: true
   validates :password, format: { with: /\A(?=.*[a-zA-Z])(?=.*[0-9])[a-zA-Z0-9]+\z/, message: "は半角英数字を含む必要があります。" }
   validates :last_name, presence: true, format: { with: /\A[ぁ-んァ-ヶ一-龥々ー]+\z/, message: "は全角日本語で入力してください。" }
   validates :first_name, presence: true, format: { with: /\A[ぁ-んァ-ヶ一-龥々ー]+\z/, message: "は全角日本語で入力してください。" }
   validates :last_name_kana, presence: true, format: { with: /\A[\p{Katakana}ー－]+\z/, message: "はカタカナのみを入力してください。" }
   validates :first_name_kana, presence: true, format: { with: /\A[\p{Katakana}ー－]+\z/, message: "はカタカナのみを入力してください。" }
   validates :birth_date, presence: true
         
end
