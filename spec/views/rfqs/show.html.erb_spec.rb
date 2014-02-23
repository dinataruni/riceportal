require 'spec_helper'

describe "rfqs/show" do
  before(:each) do
    @rfq = assign(:rfq, stub_model(Rfq,
      :commodity => "Commodity",
      :brand => "Brand",
      :pack_size => "Pack Size",
      :volume => "Volume",
      :shipment => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Commodity/)
    rendered.should match(/Brand/)
    rendered.should match(/Pack Size/)
    rendered.should match(/Volume/)
    rendered.should match(/MyText/)
  end
end
