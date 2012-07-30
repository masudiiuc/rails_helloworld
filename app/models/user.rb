class User < ActiveRecord::Base
  attr_accessible :email, :name

  #email_regex = put your reg expression here

  validates   :name,  :presence => true,
                      :length   => { :maximum => 30 }
  validates   :email, :presence => true,
                      :uniqueness => true
                      #:format   => { :with => email_regex }

end
