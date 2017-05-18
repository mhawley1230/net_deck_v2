require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { FactoryGirl.create(:user) }

  it "is valid with valid attributes" do
    expect(user).to be_valid
  end

  it "is not valid without a first name" do
    user.first_name = nil
    expect(user).to_not be_valid
  end

  it "is not valid without a last name" do
    user.last_name = nil
    expect(user).to_not be_valid
  end

  it "is not valid without a email" do
    user.email = nil
    expect(user).to_not be_valid
  end

  it "is not valid without a password" do
    user.password = nil
    expect(user).to_not be_valid
  end

  # it 'is not valid without a matching confirmation password' do
  #   user.confirmation_password = 'anotherpassword'
  #   expect(user).to_not be_valid
  # end
end
