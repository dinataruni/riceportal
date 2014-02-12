require 'spec_helper'

describe "quotes/edit" do
  before(:each) do
    @quote = assign(:quote, stub_model(Quote,
      :price => "MyString",
      :commodity => "MyString",
      :supplier => "MyString",
      :brand => "MyString",
      :notes => "MyText"
    ))
  end

  it "renders the edit quote form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", quote_path(@quote), "post" do
      assert_select "input#quote_price[name=?]", "quote[price]"
      assert_select "input#quote_commodity[name=?]", "quote[commodity]"
      assert_select "input#quote_supplier[name=?]", "quote[supplier]"
      assert_select "input#quote_brand[name=?]", "quote[brand]"
      assert_select "textarea#quote_notes[name=?]", "quote[notes]"
    end
  end
end
