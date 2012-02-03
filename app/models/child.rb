class Child < ActiveRecord::Base
  belongs_to :person
  has_many :pets
end
