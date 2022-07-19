require 'rails_helper'

RSpec.describe Address, type: :model do
  subject {Address.new(address_line_1: "1-91/1", address_line_2: "Chunchupally", city: "Kothagudem", state: "Telangana" ,zip: 500032)}
  it { should validate_presence_of(:address_line_1) }
  it { should validate_presence_of(:address_line_2) }
  it { should validate_presence_of(:city) }
  it { should validate_presence_of(:state) }
  it { should validate_presence_of(:zip)}

  it { should have_many(:orders)}
  it { should belong_to(:user)}
end
