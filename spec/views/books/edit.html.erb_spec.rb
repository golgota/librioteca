require 'rails_helper'

RSpec.describe "books/edit", type: :view do
  before(:each) do
    @book = assign(:book, FactoryGirl.create(:book))
  end

  it "renders the edit book form" do
    render

    assert_select "form[action=?][method=?]", book_path(@book), "post" do

      assert_select "input#book_title[name=?]", "book[title]"

      assert_select "input#book_author[name=?]", "book[author]"

      assert_select "input#book_isbn[name=?]", "book[isbn]"

      assert_select "input#book_year[name=?]", "book[year]"

      assert_select "input#book_pages[name=?]", "book[pages]"

      assert_select "input#book_publishing_house[name=?]", "book[publishing_house]"
    end
  end
end
