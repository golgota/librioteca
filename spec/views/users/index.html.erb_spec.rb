require 'rails_helper'

RSpec.describe "users/index", type: :view do
  before(:each) do
    FactoryGirl.create(:user)
    FactoryGirl.create(:user)
    assign(:users, User.page(1))
  end

  it "renders a list of users" do
    render
    assert_select "tr>td", :text => "kelvin".to_s, :count => 2
    assert_select "tr>td", :text => "kelvin.s@gmail.com".to_s, :count => 2
    assert_select "tr>td", :text => "12345678".to_s, :count => 2
  end
end
