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

describe BilledOrdersController do

  # This should return the minimal set of attributes required to create a valid
  # BilledOrder. As you add validations to BilledOrder, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end
  
  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # BilledOrdersController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all billed_orders as @billed_orders" do
      billed_order = BilledOrder.create! valid_attributes
      get :index, {}, valid_session
      assigns(:billed_orders).should eq([billed_order])
    end
  end

  describe "GET show" do
    it "assigns the requested billed_order as @billed_order" do
      billed_order = BilledOrder.create! valid_attributes
      get :show, {:id => billed_order.to_param}, valid_session
      assigns(:billed_order).should eq(billed_order)
    end
  end

  describe "GET new" do
    it "assigns a new billed_order as @billed_order" do
      get :new, {}, valid_session
      assigns(:billed_order).should be_a_new(BilledOrder)
    end
  end

  describe "GET edit" do
    it "assigns the requested billed_order as @billed_order" do
      billed_order = BilledOrder.create! valid_attributes
      get :edit, {:id => billed_order.to_param}, valid_session
      assigns(:billed_order).should eq(billed_order)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new BilledOrder" do
        expect {
          post :create, {:billed_order => valid_attributes}, valid_session
        }.to change(BilledOrder, :count).by(1)
      end

      it "assigns a newly created billed_order as @billed_order" do
        post :create, {:billed_order => valid_attributes}, valid_session
        assigns(:billed_order).should be_a(BilledOrder)
        assigns(:billed_order).should be_persisted
      end

      it "redirects to the created billed_order" do
        post :create, {:billed_order => valid_attributes}, valid_session
        response.should redirect_to(BilledOrder.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved billed_order as @billed_order" do
        # Trigger the behavior that occurs when invalid params are submitted
        BilledOrder.any_instance.stub(:save).and_return(false)
        post :create, {:billed_order => {}}, valid_session
        assigns(:billed_order).should be_a_new(BilledOrder)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        BilledOrder.any_instance.stub(:save).and_return(false)
        post :create, {:billed_order => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested billed_order" do
        billed_order = BilledOrder.create! valid_attributes
        # Assuming there are no other billed_orders in the database, this
        # specifies that the BilledOrder created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        BilledOrder.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => billed_order.to_param, :billed_order => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested billed_order as @billed_order" do
        billed_order = BilledOrder.create! valid_attributes
        put :update, {:id => billed_order.to_param, :billed_order => valid_attributes}, valid_session
        assigns(:billed_order).should eq(billed_order)
      end

      it "redirects to the billed_order" do
        billed_order = BilledOrder.create! valid_attributes
        put :update, {:id => billed_order.to_param, :billed_order => valid_attributes}, valid_session
        response.should redirect_to(billed_order)
      end
    end

    describe "with invalid params" do
      it "assigns the billed_order as @billed_order" do
        billed_order = BilledOrder.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        BilledOrder.any_instance.stub(:save).and_return(false)
        put :update, {:id => billed_order.to_param, :billed_order => {}}, valid_session
        assigns(:billed_order).should eq(billed_order)
      end

      it "re-renders the 'edit' template" do
        billed_order = BilledOrder.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        BilledOrder.any_instance.stub(:save).and_return(false)
        put :update, {:id => billed_order.to_param, :billed_order => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested billed_order" do
      billed_order = BilledOrder.create! valid_attributes
      expect {
        delete :destroy, {:id => billed_order.to_param}, valid_session
      }.to change(BilledOrder, :count).by(-1)
    end

    it "redirects to the billed_orders list" do
      billed_order = BilledOrder.create! valid_attributes
      delete :destroy, {:id => billed_order.to_param}, valid_session
      response.should redirect_to(billed_orders_url)
    end
  end

end