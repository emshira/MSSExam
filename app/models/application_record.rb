class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  validates_uniqueness_of :policy_number
end
