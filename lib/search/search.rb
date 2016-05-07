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

	  raise 'Please Initialize Rome 2 Rio Connectrion' unless R2R.is_initialized?	

	  

	  raise 'Invalid Origin' if origin.nil? || (origin[:name].nil? && origin[:position].nil?) || \
	  (origin[:name].nil? && origin[:position][:lat].nil? && origin[:position][:lng].nil?)
      raise 'Destination Origin' if destination.nil? || (destination[:name].nil? && destination[:position].nil?) || \
	  (destination[:name].nil? && destination[:position][:lat].nil? && destination[:position][:lng].nil?)

      query_url = R2R.base_url + "/Search?key=#{CGI::escape(R2R.key)}"

      #Origin
	  query_url += "&oName=#{CGI::escape(origin[:name])}" unless origin[:name].nil?
      query_url += "&oPos=#{CGI::escape(origin[:position][:lat] + ',' + origin[:position][:lng])}" unless origin[:position].nil?
      query_url += "&oKind=#{CGI::escape(origin[:kind])}" unless origin[:kind].nil?
      

      #Destination
      query_url += "&dName=#{CGI::escape(destination[:name])}" unless destination[:name].nil?
      query_url += "&dPos=#{CGI::escape(destination[:position][:lat] + ',' + destination[:position][:lng])}" unless destination[:position].nil?
      query_url += "&dKind=#{CGI::escape(destination[:kind])}" unless destination[:kind].nil?


      query_url += "&countryCode=#{CGI::escape(params[:country_code])}" unless params[:country_code].nil?	
      query_url += "&languageCode=#{CGI::escape(params[:language_code])}" unless params[:language_code].nil?   
      query_url += "&data=#{CGI::escape(params[:data])}" unless params[:data].nil?	
      query_url += "&flags=#{CGI::escape(ecxlusions.collect{|e| EXCLUSIONS[e]}.compact.inject(0, :+))}" if exclusions.any?

      http = Curl.get(query_url)
	  json_obj = JSON.parse(http.body_str)
	  json_obj
	end	
end