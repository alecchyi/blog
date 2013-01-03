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

describe CollectiblesController do

  # This should return the minimal set of attributes required to create a valid
  # Collectible. As you add validations to Collectible, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    { "title" => "MyString" }
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # CollectiblesController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all collectibles as @collectibles" do
      collectible = Collectible.create! valid_attributes
      get :index, {}, valid_session
      assigns(:collectibles).should eq([collectible])
    end
  end

  describe "GET show" do
    it "assigns the requested collectible as @collectible" do
      collectible = Collectible.create! valid_attributes
      get :show, {:id => collectible.to_param}, valid_session
      assigns(:collectible).should eq(collectible)
    end
  end

  describe "GET new" do
    it "assigns a new collectible as @collectible" do
      get :new, {}, valid_session
      assigns(:collectible).should be_a_new(Collectible)
    end
  end

  describe "GET edit" do
    it "assigns the requested collectible as @collectible" do
      collectible = Collectible.create! valid_attributes
      get :edit, {:id => collectible.to_param}, valid_session
      assigns(:collectible).should eq(collectible)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Collectible" do
        expect {
          post :create, {:collectible => valid_attributes}, valid_session
        }.to change(Collectible, :count).by(1)
      end

      it "assigns a newly created collectible as @collectible" do
        post :create, {:collectible => valid_attributes}, valid_session
        assigns(:collectible).should be_a(Collectible)
        assigns(:collectible).should be_persisted
      end

      it "redirects to the created collectible" do
        post :create, {:collectible => valid_attributes}, valid_session
        response.should redirect_to(Collectible.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved collectible as @collectible" do
        # Trigger the behavior that occurs when invalid params are submitted
        Collectible.any_instance.stub(:save).and_return(false)
        post :create, {:collectible => { "title" => "invalid value" }}, valid_session
        assigns(:collectible).should be_a_new(Collectible)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Collectible.any_instance.stub(:save).and_return(false)
        post :create, {:collectible => { "title" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested collectible" do
        collectible = Collectible.create! valid_attributes
        # Assuming there are no other collectibles in the database, this
        # specifies that the Collectible created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Collectible.any_instance.should_receive(:update_attributes).with({ "title" => "MyString" })
        put :update, {:id => collectible.to_param, :collectible => { "title" => "MyString" }}, valid_session
      end

      it "assigns the requested collectible as @collectible" do
        collectible = Collectible.create! valid_attributes
        put :update, {:id => collectible.to_param, :collectible => valid_attributes}, valid_session
        assigns(:collectible).should eq(collectible)
      end

      it "redirects to the collectible" do
        collectible = Collectible.create! valid_attributes
        put :update, {:id => collectible.to_param, :collectible => valid_attributes}, valid_session
        response.should redirect_to(collectible)
      end
    end

    describe "with invalid params" do
      it "assigns the collectible as @collectible" do
        collectible = Collectible.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Collectible.any_instance.stub(:save).and_return(false)
        put :update, {:id => collectible.to_param, :collectible => { "title" => "invalid value" }}, valid_session
        assigns(:collectible).should eq(collectible)
      end

      it "re-renders the 'edit' template" do
        collectible = Collectible.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Collectible.any_instance.stub(:save).and_return(false)
        put :update, {:id => collectible.to_param, :collectible => { "title" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested collectible" do
      collectible = Collectible.create! valid_attributes
      expect {
        delete :destroy, {:id => collectible.to_param}, valid_session
      }.to change(Collectible, :count).by(-1)
    end

    it "redirects to the collectibles list" do
      collectible = Collectible.create! valid_attributes
      delete :destroy, {:id => collectible.to_param}, valid_session
      response.should redirect_to(collectibles_url)
    end
  end

end
