require 'bundler/setup'
Bundler.require
configure :development do
 ENV['RACK_ENV'] ||= "development"
require 'bundler/setup'
 Bundler.require(:default, ENV['RACK_ENV'])
ActiveRecord::Base.establish_connection(
  :adapter => "sqlite3",
  :database => "db/#{ENV['RACK_ENV']}.sqlite"
 )
end

configure :production do
 db = URI.parse(ENV['DATABASE_URL'] || 'postgres://localhost/db/production.sqlite3')

 ActiveRecord::Base.establish_connection(
   :adapter  => db.scheme == 'postgres' ? 'postgresql' : db.scheme,
   :host     => db.host,
   :username => db.user,
   :password => db.password,
   :database => db.path[1..-1],
   :encoding => 'utf8'
 )
end