class Vendor < User
  after_initialize :set_default_role, :if => :new_record?
  default_scope {where(:role => :vendor)}

  # Sets default value to vendor
  def set_default_role
    self.role ||= :vendor
  end

  def set_default_search

  end
end
