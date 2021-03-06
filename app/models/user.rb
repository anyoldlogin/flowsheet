class User < ActiveRecord::Base
  has_many :monthlies
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :first_name, :last_name, :email, :password, :password_confirmation, :remember_me
  # attr_accessible :title, :body

  validates_presence_of :first_name
  validates_presence_of :last_name
  validates_uniqueness_of  :email, :case_sensitive => false


  def full_name
    "#{ last_name }, #{ first_name }"
  end
end
