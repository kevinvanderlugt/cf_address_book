class Person < ActiveRecord::Base
  has_many :addresses, dependent: :destroy
  accepts_nested_attributes_for :addresses

  def full_name
    [first_name, last_name].join(" ")
  end
end
