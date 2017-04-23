class User < ApplicationRecord
  enum role: [:user, :vendor, :admin]
  enum group: [:na]
  
  after_initialize :set_default_role, :if => :new_record?
  after_initialize :set_default_group, :if => :new_record?

  # Filter users that are vendors
  # scope :vendors, -> {where(:role => :vendor)}
  scope :only_users, -> { where(:role => :user) }
  scope :only_admins, -> { where(:role => :admin) }

  def set_default_role
    self.role ||= :user
  end

  def set_default_group
    self.group ||= :na
  end



  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  # attr_accessor :email, :password, :password_confirmation, :role

end
