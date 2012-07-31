class User < ActiveRecord::Base
  attr_accessor   :password
  attr_accessible :email, :name, :password, :password_confirmation

  #email_regex = put your reg expression here

  validates   :name,  :presence => true,
                      :length   => { :maximum => 30 }

  validates   :email, :presence => true,
                      :uniqueness => true
                      #:format   => { :with => email_regex }

  validates   :password, :presence => true,
                         :confirmation => true,
                         :length => { :within => 6..40 }

  before_save   :encrypt_password

  #public method block
  def has_password? (submitted_password)
    encrypted_password == encrypt(submitted_password)
  end

  #private method block
  private
    def encrypt_password
      self.encrypted_password = encrypt(password)
    end

    def encrypt (string)
      string
    end
end
