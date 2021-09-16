class MuseumsController < ApplicationController
  def find
    if params[:longitude].blank? || params[:latitude].blank?
      @museums = 'enter coordinates'
    else
      url = "https://api.mapbox.com/geocoding/v5/mapbox.places/#{params[:latitude]},#{params[:longitude]}.json?limit=5&types=poi&access_token=pk.eyJ1IjoidHdwZXJraW5zIiwiYSI6ImNrdG1zbXZ4ejB0cTYydW1qY2UzaGZmbG4ifQ.68F9nxoAw-uieONOJd8LHg"
      @museums = JSON.parse(URI.open(url).read)
    end
  end
end
