class User < ApplicationRecord
  enum role: [:user, :vendor, :admin]
  after_initialize :set_default_role, :if => :new_record?

  has_many :user_categories
  has_many :categories, :through => :user_categories

  # Filter users that are vendors
  scope :vendors, -> {where(:role => :vendor)}

  def set_default_role
    self.role ||= :user
  end



  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  # attr_accessor :email, :password, :password_confirmation, :role

end
