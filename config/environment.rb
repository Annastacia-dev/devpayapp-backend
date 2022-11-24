ENV['RACK_ENV'] ||= "development"

require 'bundler/setup'
Bundler.require(:default, ENV['RACK_ENV'])

require_all 'app'

# configure :production, :development do
#     db = URI.parse(ENV['RACK_ENV'] ||
#     'postgres://localhost/db/developers'
#     )
#     ActiveRecord::Base.establish_connection(
#         adapter: 'postgresql',
#         host: db.host,
#         username: db.user,
#         password: db.password,
#         database: db.path[1..-1],
#         encoding: 'utf8'
#     )
# end