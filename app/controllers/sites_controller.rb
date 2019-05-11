class SitesController < ApplicationController
  include SitesHelper

  def index
  	@sites = Site.search(params[:search])
	build_geojson(@sites)

	respond_to do |format|
		 format.html
		 format.js
		 format.json { render json: @geojson }
	end
  end
end
