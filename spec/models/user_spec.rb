require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { FactoryGirl.create(:user) }

  it "is valid with valid attributes" do
    expect(user).to be_valid
  end

  it "is not valid without a first name"

  it "is not valid without a last name"

  it "is not valid without a email"

  it "is not valid without a password"

  it "is not valid without a confirmation password"

  # it { should have_valid(:first_name).when('John', 'Sally') }
  # it { should_not have_valid(:first_name).when(nil, '') }
  #
  # it { should have_valid(:last_name).when('Smith', 'Swanson') }
  # it { should_not have_valid(:last_name).when(nil, '') }
  #
  # it { should have_valid(:email).when('user@example.com', 'another@gmail.com') }
  # it { should_not have_valid(:email).when(nil, '', 'user',\
  #   'users@com', 'usersba.com') }
  #
  # # it { should have_valid(:avatar).when('https://profile.image.url.com/cookie.jpg')}
  #
  # it 'has a matching password confirmation for the password' do
  #   user = User.new
  #   user.password = 'password'
  #   user.password_confirmation = 'anotherpassword'
  #
  #   expect(user).to_not be_valid
  #   expect(user.errors[:password_confirmation]).to_not be_blank
  # end
end
