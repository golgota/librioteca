require 'rails_helper'

RSpec.describe "books/index", type: :view do
  before(:each) do
    FactoryGirl.create(:book)
    FactoryGirl.create(:book)
    assign(:books, Book.page(1))
  end

  it "renders a list of books" do
    render
    assert_select "tr>td", :text => "Harry Potter".to_s, :count => 2
    assert_select "tr>td", :text => "J. K. Rowling".to_s, :count => 2
    assert_select "tr>td", :text => "9788532511010".to_s, :count => 2
    assert_select "tr>td", :text => 2000.to_s, :count => 2
    assert_select "tr>td", :text => 224.to_s, :count => 2
    assert_select "tr>td", :text => "Rocco".to_s, :count => 2
  end
end
