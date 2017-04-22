class Vendor < User
  after_initialize :set_default_role, :if => :new_record?
  # default filter to role='vendor'
  default_scope {where(:role => :vendor)}


  has_many :vendor_categories
  has_many :categories, :through => :vendor_categories
  
  # Sets default value to vendor
  def set_default_role
    self.role ||= :vendor
  end

end
