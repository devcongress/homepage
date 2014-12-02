class PagesController < ApplicationController
  def index
  end

  def thankyou
    render layout: 'thankyou'
  end

  def exchange
  end

  def codecamp
    render layout: 'codecamp'
  end

  def mission
    # redirects to the Github gist
    redirect_to "https://github.com/devcongress/hckthn/wiki/DevCongress'-MPower-Payments-API-Hackathon"
  end

end
