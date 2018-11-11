require 'rails_helper'

RSpec.describe User, type: :model do
  it { should have_many(:favos) }
  it { should validates_presence_of(:name)}
  it { should validates_presence_of(:email)}
  it { should validates_presence_of(:password_digest)}
end
