class Category < ApplicationRecord
  has_many :vendor_categories
  has_many :vendors, :through => :vendor_categories
  acts_as_tree

  # Recursively finds each ancestors name and concatenates with the parent name.
  def ancestors_name
    if parent
      "#{parent.ancestors_name} : #{parent.name}"
    end

    # Returns a concatenate string with all names of the parents with its own
    def long_name
      "#{ancestors_name} #{name}"
    end
  end
end
