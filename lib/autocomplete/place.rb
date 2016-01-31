class R2R::Autocomplete::Place
	attr_accessor :kind,:long_name,:short_name,:lat,:lng,:rad
	attr_accessor :region_name, :region_code,:country_name,:country_code

	def initialize(params = {})
		self.kind = params.fetch('kind')
		self.long_name = params.fetch('longName')
		self.short_name = params.fetch('shortName')
		self.lat = params.fetch('lat')
		self.lng = params.fetch('lng')
		self.rad = params.fetch('rad')
		self.region_name = params.fetch('regionName')
		self.region_code = params.fetch('regionCode')
		self.country_name = params.fetch('countryName')
		self.country_code = params.fetch('countryCode')
	end	
end	