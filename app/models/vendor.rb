class Vendor < User
  enum group: [
                :catering, :restaurants, :bakeries, :florist, :organic,   :food_truck, :caviar_shots, :party_rentals, :liquor, :staffing, :ice_cream, :event_spaces
              ]
  after_initialize :set_default_role, :if => :new_record?

  # default filter to role='vendor'
  default_scope { where(:role => :vendor) }

  has_many :vendor_categories
  has_many :categories, :through => :vendor_categories

  # validators
  validates :group, presence: true


  # Sets default value to vendor
  def set_default_role
    self.role ||= :vendor
  end

end
