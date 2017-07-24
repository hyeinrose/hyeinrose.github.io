class User < ActiveRecord::Base
    has_secure_password
    before_save { self.email = email.downcase } #save하기전에 작동하는 코드 사용자에게 받아온 email을 소문자로 바꿔서 저장  
    VALID_EMAIL_REGEX = /\A([\w+\-]\.?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
    validates :name, presence: true, length: {maximum: 50}
    validates :email, presence: true, length: {maximum: 255},
                        format: {with: VALID_EMAIL_REGEX},
                        uniqueness: {case_sensitive: false}
    
end
