class User < ApplicationRecord
	has_many :profiles
	accepts_nested_attributes_for :profiles

end
 