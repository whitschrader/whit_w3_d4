class ExtractDomainNameFromEmail < ActiveRecord::Migration
  def change
  	Person.all.each do |person| 
  		person.email.split("@").last
  		person.save
  end
end
