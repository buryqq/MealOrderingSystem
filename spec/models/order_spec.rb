require 'rails_helper'

describe Order, '#order name' do
 
  it 'returns one name, the name of an order ' do
  # Setup
    order = Order.create(name: 'ORDER')
  
  # Exercise    
    order = order.name
  

   
  # Verify
    expect(order).to eq 'ORDER'
 
  # Teardown is for now mostly handled by RSpec itself
  end
 
end