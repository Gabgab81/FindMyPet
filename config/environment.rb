# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

# config/environments/development.rb
config.active_storage.service = :cloudinary