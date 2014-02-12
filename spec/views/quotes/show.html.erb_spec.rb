require 'spec_helper'

describe "quotes/show" do
  before(:each) do
    @quote = assign(:quote, stub_model(Quote,
      :price => "Price",
      :commodity => "Commodity",
      :supplier => "Supplier",
      :brand => "Brand",
      :notes => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Price/)
    rendered.should match(/Commodity/)
    rendered.should match(/Supplier/)
    rendered.should match(/Brand/)
    rendered.should match(/MyText/)
  end
end
