require 'spec_helper'
require 'rails_helper'

describe UsersController do

  describe "show action" do
    it "render show tempale if user sing in" do 
      user1 = create(:user)
      get :show, { id: user1.id }

      response.should render_template( 'show' )
    end

    # it "render 404 if no user" do 
    #   get :show, {id: 0}
    #   response.status.should == 404
    # end
  end

end