module SitesHelper
	def build_geojson(sites)
	  	@geojson = Array.new
	  	sites.each do |site|
	  		unless site.doesnt_have_coordinates
	  			@geojson << {
	  				type: "Feature",
	  				geometry: {
	  					type: "point",
	  					coordinates: [site.longitude, site.latitude]
	  				},
	  				properties: {
	  					title: site.description,
	            description: ""
	  				}
	  			}
	  		end
  	end
end
