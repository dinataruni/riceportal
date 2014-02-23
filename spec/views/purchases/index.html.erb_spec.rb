require 'spec_helper'

describe "purchases/index" do
  before(:each) do
    assign(:purchases, [
      stub_model(Purchase,
        :quote_id => 1,
        :commodity => "Commodity",
        :supplier => "Supplier",
        :price => "Price",
        :brand => "Brand",
        :pack_size => "Pack Size",
        :volume => "Volume",
        :shipment_details => "Shipment Details",
        :po_number => "Po Number"
      ),
      stub_model(Purchase,
        :quote_id => 1,
        :commodity => "Commodity",
        :supplier => "Supplier",
        :price => "Price",
        :brand => "Brand",
        :pack_size => "Pack Size",
        :volume => "Volume",
        :shipment_details => "Shipment Details",
        :po_number => "Po Number"
      )
    ])
  end

  it "renders a list of purchases" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Commodity".to_s, :count => 2
    assert_select "tr>td", :text => "Supplier".to_s, :count => 2
    assert_select "tr>td", :text => "Price".to_s, :count => 2
    assert_select "tr>td", :text => "Brand".to_s, :count => 2
    assert_select "tr>td", :text => "Pack Size".to_s, :count => 2
    assert_select "tr>td", :text => "Volume".to_s, :count => 2
    assert_select "tr>td", :text => "Shipment Details".to_s, :count => 2
    assert_select "tr>td", :text => "Po Number".to_s, :count => 2
  end
end
