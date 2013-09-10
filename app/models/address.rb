class Address < ActiveRecord::Base
  belongs_to :person

  # Not sure what is a good method name yet here
  def city_address
    "#{city}, #{state} #{zip}"
  end
end
