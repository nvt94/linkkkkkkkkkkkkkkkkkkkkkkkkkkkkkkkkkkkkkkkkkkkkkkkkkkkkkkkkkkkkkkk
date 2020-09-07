class LinksController < ApplicationController
  def index
    url = params['url']
    if url.present? 
      @link = Link.create(url: encode(url), origin: url)
    end
    if params[:link].present?
      link = Link.find_by(url: params[:link])
      redirect_to link.origin
    end
  end

  private
  def encode url
    result = ""
    200.times do 
      result = result + [97, 65].sample(1).first.chr;
    end
    result
  end
end
