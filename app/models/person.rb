class Person < ActiveRecord::Base
  has_many :addresses

  def full_name
    [first_name, last_name].join(" ")
  end
end
