class User < ActiveRecord::Base
  before_save :abc
  protected
  def abc
  if firstname.nil? 
   firstname=email
   lastname=nil
  end
  end
  validates :email, :presence => true
  before_create do |user|
   user.firstname=user.firstname.capitalize
   user.lastname=user.lastname.capitalize
  end
  
attr_accessible :firstname, :email, :department, :age, :contactno, :gender, :country, :lastname
  has_many:posts
end
