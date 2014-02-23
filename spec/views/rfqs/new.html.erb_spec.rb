require 'spec_helper'

describe "rfqs/new" do
  before(:each) do
    assign(:rfq, stub_model(Rfq,
      :commodity => "MyString",
      :brand => "MyString",
      :pack_size => "MyString",
      :volume => "MyString",
      :shipment => "MyText"
    ).as_new_record)
  end

  it "renders new rfq form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", rfqs_path, "post" do
      assert_select "input#rfq_commodity[name=?]", "rfq[commodity]"
      assert_select "input#rfq_brand[name=?]", "rfq[brand]"
      assert_select "input#rfq_pack_size[name=?]", "rfq[pack_size]"
      assert_select "input#rfq_volume[name=?]", "rfq[volume]"
      assert_select "textarea#rfq_shipment[name=?]", "rfq[shipment]"
    end
  end
end
