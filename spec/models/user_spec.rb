require 'rails_helper'

RSpec.describe User, type: :model do
  subject {User.new(email: "Shailaja@gmail.com", first_name: "shailaja", last_name: "rapolu", password: "1234")}

  it 'First name should present' do
    subject.first_name = nil
    expect(subject).to_not be_valid
  end

  it 'Last name should present' do
    subject.last_name = nil
    expect(subject).to_not be_valid
  end

  it 'Email should present' do
    subject.email = nil
    expect(subject).to_not be_valid
  end 

  it 'Password should present' do
    subject.password = nil
    expect(subject).to_not be_valid
  end
  
  # it { should validate_presence_of(:password) }
  describe "Associations" do
    it { should have_many(:orders) }
    it { should have_one(:cart) }
    it { should have_many(:addresses) }
  end
  
end
