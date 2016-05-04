require 'rails_helper'

RSpec.describe "books/index", type: :view do
  before(:each) do
    FactoryGirl.create(:book)
    FactoryGirl.create(:book)
    assign(:books, Book.page(1))
  end

  it "renders a list of books" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Author".to_s, :count => 2
    assert_select "tr>td", :text => "Isbn".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Publishing House".to_s, :count => 2
  end
end
