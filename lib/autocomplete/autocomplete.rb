module R2R::Autocomplete

	def self.perform(query,params = {})

	  raise 'Please Initialize Rome 2 Rio Connectrion' unless R2R.is_initialized?		
      
      query_url = R2R.base_url + "/Autocomplete?key=#{CGI::escape(R2R.key)}&query=#{CGI::escape(query)}"
      query_url += "&countryCode=#{CGI::escape(params[:country_code])}" unless params[:country_code].nil?	
      query_url += "&languageCode=#{CGI::escape(params[:language_code])}" unless params[:language_code].nil?   

      http = Curl.get(query_url)
	  json_obj = JSON.parse(http.body_str)
	  json_obj
	end	
end