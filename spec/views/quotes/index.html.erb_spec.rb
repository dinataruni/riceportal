require 'spec_helper'

describe "quotes/index" do
  before(:each) do
    assign(:quotes, [
      stub_model(Quote,
        :price => "Price",
        :commodity => "Commodity",
        :supplier => "Supplier",
        :brand => "Brand",
        :notes => "MyText"
      ),
      stub_model(Quote,
        :price => "Price",
        :commodity => "Commodity",
        :supplier => "Supplier",
        :brand => "Brand",
        :notes => "MyText"
      )
    ])
  end

  it "renders a list of quotes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Price".to_s, :count => 2
    assert_select "tr>td", :text => "Commodity".to_s, :count => 2
    assert_select "tr>td", :text => "Supplier".to_s, :count => 2
    assert_select "tr>td", :text => "Brand".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
