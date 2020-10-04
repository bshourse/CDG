require "rails_helper"

RSpec.describe User, type: :model do
  context "validations tests" do
    it "should require name" do
      user = User.new(email: "test@test.com", password: "123")
      expect(user.valid?).to eq(false)
    end

    it "should require email" do
      user = User.new(name: "Test", password: "123")
      expect(user.valid?).to eq(false)
    end

    it "should require password" do
      user = User.new(name: "Test", email: "test@gnu.com")
      expect(user.valid?).to eq(false)
    end

    it "should be able to save user" do
      user = User.new(name: "Test", email: "test@gnu.com", password: "123")
      expect(user.save).to eq(true)
    end

  context "email uniqueness" do
    before do
       User.create(name: "Test", email: "test@gnu.com", password: "123")
    end
     it "is invalid if email is not unique" do
       user = User.new(name: "Test", email: "test@gnu.com", password: "123")
       expect(user.valid?).to eq(false)
     end

     it "is valid if email is unique " do
       user = User.new(name:"Test", email: "test2@gnu.com", password: "123")
       expect(user.valid?).to eq(true)
     end
  end
  end
end
