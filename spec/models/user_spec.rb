require "rails_helper"

RSpec.describe User, type: :model do
  context "validations tests" do
    it "check the model has name" do
      user = User.new(email: "test@test.com", password: "123")
      expect(user.valid?).to eq(false)
    end

    it "check the model has email" do
      user = User.new(name: "Test", password: "123")
      expect(user.valid?).to eq(false)
    end

    it "check the model has password" do
      user = User.new(name: "Test", email: "test@gnu.com")
      expect(user.valid?).to eq(false)
    end

    it "should be able to save user" do
      user = User.new(name: "Test", email: "test@gnu.com", password: "123")
      expect(user.save).to eq(true)
    end
  end
end
