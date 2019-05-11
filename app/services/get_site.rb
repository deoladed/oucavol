require 'net/http'
require 'json'

class GetSite
	def perform
		url = "http://data.ffvl.fr/json/sites.json"
		uri = URI(url)
		response = Net::HTTP.get(uri)
		arrayofhash = JSON.parse(response)

		arrayofhash.each.with_index do |site, i|
			site["handi"].gsub!("\u0000", '') unless site["handi"].nil?
			site["signaletique"].gsub!("\u0000", '') unless site["signaletique"].nil?

			Site.create!(suid: site["suid"],
						 ffvl_id: site["id"],
						 number: site["numero"],
						 name: site["nom"],
						 surname: site["sous_nom"],
						 zip: site["cp"],
						 city: site["ville"],
						 site_type: site["site_type"],
						 upordown: site["site_sous_type"],
						 practice: site["pratiques"],
						 latitude: site["lat"],
						 longitude: site["lon"],
						 altitude: site["alt"],
						 access: site["acces"],
						 parking_distance: site["trajet_parking"],
						 top_down_distance: site["trajet_attero_deco"],
						 handi: site["handi"],
						 orientation: site["orientation"],
						 favorable_wind: site["vent_favo"],
						 unfavorable_wind: site["vent_defavo"],
						 ideal_conditions: site["conditions_ideales"],	
						 description: site["description"],
						 restrictions: site["restrictions"],
						 air_region: site["reg_aerienne"],
						 dangers: site["dangers"],
						 balise: site["balise"],
						 webcam: site["webcam"],
						 signaletique: site["signaletique"],
						 cross_number: site["numero_cross"],
						 modification_date: site["date_modification"]
						)
			puts "#{i + 1}/#{arrayofhash.size} site created : #{site['nom']}"
		end
	end
end

# GetSite.new.perform