class Order < ApplicationRecord
  validates_presence_of :name
  validates_presence_of :status
  validates_presence_of :user_id


  has_many :meals, inverse_of: :order
  accepts_nested_attributes_for :meals, allow_destroy: true

  def	meals_for_form
    collection = meals.where(order_id: id)
    collection.any? ? collection : meals.build
  end
end
