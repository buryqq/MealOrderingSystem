class Meal < ApplicationRecord
belongs_to :order 
	 validates :user_id, :uniqueness => { :scope => :order_id,
    :message => "may only insert one meal per order." }

  validate :user_id, :user_id_uniqueness

  def user_id_uniqueness 
    self.order.meals.select {|p| p.user_id == self.user_id}.size == 1
  end
end


