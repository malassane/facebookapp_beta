class User < ApplicationRecord

    before_validation { email.downcase! }
    validates :email, presence: true, length: { maximum: 255},
                            format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
    validates :password, presence: true
    has_secure_password
    has_many :pictures
    has_many :favorites, dependent: :destroy
end
