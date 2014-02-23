require 'spec_helper'

describe "purchases/show" do
  before(:each) do
    @purchase = assign(:purchase, stub_model(Purchase,
      :quote_id => 1,
      :commodity => "Commodity",
      :supplier => "Supplier",
      :price => "Price",
      :brand => "Brand",
      :pack_size => "Pack Size",
      :volume => "Volume",
      :shipment_details => "Shipment Details",
      :po_number => "Po Number"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Commodity/)
    rendered.should match(/Supplier/)
    rendered.should match(/Price/)
    rendered.should match(/Brand/)
    rendered.should match(/Pack Size/)
    rendered.should match(/Volume/)
    rendered.should match(/Shipment Details/)
    rendered.should match(/Po Number/)
  end
end
