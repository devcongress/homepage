require 'spec_helper'

describe PagesController do

  describe "GET 'index'" do
    it "returns http success" do
      get 'index'
      response.should be_success
    end
  end

  describe "GET 'agenda'" do
    it "returns http success" do
      get 'agenda'
      response.should be_success
    end
  end

end
