class Person < ActiveRecord::Base
  has_many :addresses, dependent: :destroy

  def full_name
    [first_name, last_name].join(" ")
  end
end
