require 'spec_helper'

describe "purchases/new" do
  before(:each) do
    assign(:purchase, stub_model(Purchase,
      :quote_id => 1,
      :commodity => "MyString",
      :supplier => "MyString",
      :price => "MyString",
      :brand => "MyString",
      :pack_size => "MyString",
      :volume => "MyString",
      :shipment_details => "MyString",
      :po_number => "MyString"
    ).as_new_record)
  end

  it "renders new purchase form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", purchases_path, "post" do
      assert_select "input#purchase_quote_id[name=?]", "purchase[quote_id]"
      assert_select "input#purchase_commodity[name=?]", "purchase[commodity]"
      assert_select "input#purchase_supplier[name=?]", "purchase[supplier]"
      assert_select "input#purchase_price[name=?]", "purchase[price]"
      assert_select "input#purchase_brand[name=?]", "purchase[brand]"
      assert_select "input#purchase_pack_size[name=?]", "purchase[pack_size]"
      assert_select "input#purchase_volume[name=?]", "purchase[volume]"
      assert_select "input#purchase_shipment_details[name=?]", "purchase[shipment_details]"
      assert_select "input#purchase_po_number[name=?]", "purchase[po_number]"
    end
  end
end
