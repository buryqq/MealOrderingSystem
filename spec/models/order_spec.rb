require 'rails_helper'

RSpec.describe Order, type: :model do
  subject { described_class.new }

  it 'is valid with valid attributes' do
    subject.name = 'Anything'
    subject.status = 'Anything'
    subject.user_id = 'current_user_id'
    expect(subject).to be_valid
  end
  it 'is not valid without a name' do
    expect(subject).to_not be_valid
  end
  it 'is not valid without a status' do
    subject.name = 'Anything'
    expect(subject).to_not be_valid
  end
  it 'is not valid without a user_id' do
  	subject.name = 'Anything'
  	subject.status = 'open'
  
    expect(subject).to_not be_valid
  end
end
