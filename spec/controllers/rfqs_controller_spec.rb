require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe RfqsController do

  # This should return the minimal set of attributes required to create a valid
  # Rfq. As you add validations to Rfq, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "commodity" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # RfqsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all rfqs as @rfqs" do
      rfq = Rfq.create! valid_attributes
      get :index, {}, valid_session
      assigns(:rfqs).should eq([rfq])
    end
  end

  describe "GET show" do
    it "assigns the requested rfq as @rfq" do
      rfq = Rfq.create! valid_attributes
      get :show, {:id => rfq.to_param}, valid_session
      assigns(:rfq).should eq(rfq)
    end
  end

  describe "GET new" do
    it "assigns a new rfq as @rfq" do
      get :new, {}, valid_session
      assigns(:rfq).should be_a_new(Rfq)
    end
  end

  describe "GET edit" do
    it "assigns the requested rfq as @rfq" do
      rfq = Rfq.create! valid_attributes
      get :edit, {:id => rfq.to_param}, valid_session
      assigns(:rfq).should eq(rfq)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Rfq" do
        expect {
          post :create, {:rfq => valid_attributes}, valid_session
        }.to change(Rfq, :count).by(1)
      end

      it "assigns a newly created rfq as @rfq" do
        post :create, {:rfq => valid_attributes}, valid_session
        assigns(:rfq).should be_a(Rfq)
        assigns(:rfq).should be_persisted
      end

      it "redirects to the created rfq" do
        post :create, {:rfq => valid_attributes}, valid_session
        response.should redirect_to(Rfq.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved rfq as @rfq" do
        # Trigger the behavior that occurs when invalid params are submitted
        Rfq.any_instance.stub(:save).and_return(false)
        post :create, {:rfq => { "commodity" => "invalid value" }}, valid_session
        assigns(:rfq).should be_a_new(Rfq)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Rfq.any_instance.stub(:save).and_return(false)
        post :create, {:rfq => { "commodity" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested rfq" do
        rfq = Rfq.create! valid_attributes
        # Assuming there are no other rfqs in the database, this
        # specifies that the Rfq created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Rfq.any_instance.should_receive(:update).with({ "commodity" => "MyString" })
        put :update, {:id => rfq.to_param, :rfq => { "commodity" => "MyString" }}, valid_session
      end

      it "assigns the requested rfq as @rfq" do
        rfq = Rfq.create! valid_attributes
        put :update, {:id => rfq.to_param, :rfq => valid_attributes}, valid_session
        assigns(:rfq).should eq(rfq)
      end

      it "redirects to the rfq" do
        rfq = Rfq.create! valid_attributes
        put :update, {:id => rfq.to_param, :rfq => valid_attributes}, valid_session
        response.should redirect_to(rfq)
      end
    end

    describe "with invalid params" do
      it "assigns the rfq as @rfq" do
        rfq = Rfq.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Rfq.any_instance.stub(:save).and_return(false)
        put :update, {:id => rfq.to_param, :rfq => { "commodity" => "invalid value" }}, valid_session
        assigns(:rfq).should eq(rfq)
      end

      it "re-renders the 'edit' template" do
        rfq = Rfq.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Rfq.any_instance.stub(:save).and_return(false)
        put :update, {:id => rfq.to_param, :rfq => { "commodity" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested rfq" do
      rfq = Rfq.create! valid_attributes
      expect {
        delete :destroy, {:id => rfq.to_param}, valid_session
      }.to change(Rfq, :count).by(-1)
    end

    it "redirects to the rfqs list" do
      rfq = Rfq.create! valid_attributes
      delete :destroy, {:id => rfq.to_param}, valid_session
      response.should redirect_to(rfqs_url)
    end
  end

end
