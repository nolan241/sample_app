require 'spec_helper'

	describe "AuthenticationPages" do
	  describe "GET /authentication_pages" do
	    it "works! (now write some real specs)" do
	      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
	      get authentication_pages_index_path
	      response.status.should be(200)
	    end
	  end
	end

  describe "authorization" do

    describe "for non-signed-in users" do
      let(:user) { FactoryGirl.create(:user) }

      describe "in the Users controller" do

        describe "visiting the edit page" do
          before { visit edit_user_path(user) }
          it { should have_title('Sign in') }
        end

        describe "submitting to the update action" do
          before { patch user_path(user) }
          specify { expect(response).to redirect_to(signin_path) }
        end
      end
    end
  end
end