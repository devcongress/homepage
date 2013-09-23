require 'spec_helper'

describe HackersController do

  describe "GET '_new'" do
    it "returns http success" do
      get '_new'
      response.should be_success
    end
  end

end
