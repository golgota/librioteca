require 'rails_helper'

RSpec.describe "books/show", type: :view do
  before(:each) do
    @book = assign(:book, FactoryGirl.create(:book))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Harry Potter/)
    expect(rendered).to match(/J. K. Rowling/)
    expect(rendered).to match(/9788532511010/)
    expect(rendered).to match(/2000/)
    expect(rendered).to match(/224/)
    expect(rendered).to match(/Rocco/)
  end
end
