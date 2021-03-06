require 'rails_helper'

RSpec.describe "devise/registrations/show", type: :view do
  before(:each) do
    @user = assign(:user, FactoryBot.create(:user))
    # Devise helper to sign_in user
    # https://github.com/plataformatec/devise#test-helpers
    sign_in @user
  end

  it "renders attributes" do
    render
    expect(rendered).to have_content(@user.first_name, count: 1)
    expect(rendered).to have_content(@user.last_name, count: 1)
  end
end
