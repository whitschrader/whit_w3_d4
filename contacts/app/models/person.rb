class Person < ActiveRecord::Base
	def self.all_email_domains
		# let's get all distinct
		# domain names
		# select distinct domain_name from people
		select(:domain_name).distinct.map do |person|
			person.domain_name
		end
	end


	def self.find_all_with_email_domain email_domain=nil
		# select * 
		# from people
		# where email_domain = 'yahoo.com'
		return all if email_domain == 'All'
		where('domain_name = ?', email_domain)

	end


end
