class Site < ApplicationRecord

	def self.search(search)
		if search
			where('name ILIKE ?', "%#{search}%").or(
      where('city ILIKE ?', "%#{search}%"))
		else
			all
		end
	end

	def doesnt_have_coordinates
		self.longitude.nil? || self.latitude.nil?
	end
end
