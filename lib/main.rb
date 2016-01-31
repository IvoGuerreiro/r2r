module R2R
	@server ||= 'free.rome2rio.com'
	@key ||= ''

	def self.init(params = {})
		@server = params.fetch(:server)
		@key = params.fetch(:key)
		self
	end	

	def self.base_url
		"http://#{@server}/api/1.2/json/"
	end	

	def self.key
		@key
	end	
end
