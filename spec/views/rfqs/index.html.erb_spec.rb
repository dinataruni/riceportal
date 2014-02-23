require 'spec_helper'

describe "rfqs/index" do
  before(:each) do
    assign(:rfqs, [
      stub_model(Rfq,
        :commodity => "Commodity",
        :brand => "Brand",
        :pack_size => "Pack Size",
        :volume => "Volume",
        :shipment => "MyText"
      ),
      stub_model(Rfq,
        :commodity => "Commodity",
        :brand => "Brand",
        :pack_size => "Pack Size",
        :volume => "Volume",
        :shipment => "MyText"
      )
    ])
  end

  it "renders a list of rfqs" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Commodity".to_s, :count => 2
    assert_select "tr>td", :text => "Brand".to_s, :count => 2
    assert_select "tr>td", :text => "Pack Size".to_s, :count => 2
    assert_select "tr>td", :text => "Volume".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
