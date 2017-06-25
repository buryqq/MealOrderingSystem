class Order < ApplicationRecord
	has_many :meals, inverse_of: :order
    accepts_nested_attributes_for :meals, allow_destroy: true


  def 	meals_for_form
    collection = meals.where(order_id: id)
    collection.any? ? collection : meals.build
  end

end
