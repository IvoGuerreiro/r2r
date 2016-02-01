module R2R::Search

	EXCLUSIONS = {
		:flight_segments => 0x00000001,
    	:flight_itineraries => 0x00000002,
		:train_segments => 0x00000010,
		:train_itineraries => 0x00000020,
		:bus_segments => 0x00000100,
		:bus_itineraries => 0x00000200,
		:ferry_segments => 0x00001000,
		:ferry_itineraries => 0x00002000,
		:car_segments => 0x00010000,
		:commuter_hops => 0x00100000, 
		:special_hops => 0x00200000, 
		:minor_start_segments => 0x00400000,
		:minor_end_segments => 0x00800000,
		:paths => 0x01000000, 
		:indicative_prices => 0x04000000
	}


	def self.perform(origin,destination,exclusions = [], params = {})
      
      query_url = R2R.base_url + "/Geocode?key=#{CGI::escape(R2R.key)}&query=#{CGI::escape(query)}"
      query_url += "&countryCode=#{CGI::escape(params[:country_code])}" unless params[:country_code].nil?	
      query_url += "&languageCode=#{CGI::escape(params[:language_code])}" unless params[:language_code].nil?   
      query_url += "&data=#{CGI::escape(params[:data])}" unless params[:data].nil?	
      query_url += "&flags=#{CGI::escape(ecxlusions.collect{|e| EXCLUSIONS[e]}.compact.inject(0, :+)}" if exclusions.any?

      http = Curl.get(query_url)
	  json_obj = JSON.parse(http.body_str)
	  #json_obj['places'].collect{|p| Place.new(p)}	
	end	
end