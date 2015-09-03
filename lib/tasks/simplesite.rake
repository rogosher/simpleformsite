require 'csv'

namespace :simple do
  desc "Print email database to csv"
  task printdb: :environment do
    path = "tmp/"
    filename = 'test_'+Date.today.to_s + '.dat'

    emails = WelcomeEmail.all
    CSV.open(path+filename, "wb", :col_sep => ',') do |csv|
      emails.each do |email|
        csv << [email.id.to_s, email.email]
        puts "Added email: " + email.email
      end
    end
  end

end
