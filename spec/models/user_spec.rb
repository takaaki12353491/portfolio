require 'rails_helper'

RSpec.describe User, type: :model do
  # 名前、メール、パスワードがあれば有効な状態であること
  it "is valid with a name, email, and password" do
    user = User.new(
      name:     "test",
      email:    "test@example.com",
      password: "testpassword",
    )
    expect(user).to be_valid
  end
  # 名前がなければ無効な状態であること
  it "is invalid without a name"
  # メールアドレスがなければ無効な状態であること
  it "is invalid without an email address"
  # 重複したメールアドレスなら無効な状態であること
  it "is invalid with a duplicate email address"
  # パスワードがなければ無効な状態であること
  it "is invalid with a password"
end
