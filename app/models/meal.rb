class Meal < ApplicationRecord
belongs_to :order 
belongs_to :user 
	 validates :user_id, :uniqueness => { :scope => :order_id,
    :message => "may only insert one meal per order." }
end


