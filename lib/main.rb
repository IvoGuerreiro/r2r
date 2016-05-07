module R2R
	@server ||= 'free.rome2rio.com'
	@key ||= ''
	@initialized = false

	def self.init(params = {})
		@server = params.fetch(:server)
		@key = params.fetch(:key)
		@initialized = true
		self
	end	

	def self.base_url
		"http://#{@server}/api/1.2/json/"
	end	

	def self.key
		@key
	end	

	def self.is_initialized?
		@initialized
	end	
end
