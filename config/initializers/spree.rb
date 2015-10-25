# Configure Spree Preferences
#
# Note: Initializing preferences available within the Admin will overwrite any changes that were made through the user interface when you restart.
#       If you would like users to be able to update a setting with the Admin it should NOT be set here.
#
# Note: If a preference is set here it will be stored within the cache & database upon initialization.
#       Just removing an entry from this initializer will not make the preference value go away.
#       Instead you must either set a new value or remove entry, clear cache, and remove database entry.
#
# In order to initialize a setting do:
# config.setting_name = 'new value'
Spree.config do |config|
  # Example:
  # Uncomment to stop tracking inventory levels in the application
  # config.track_inventory_levels = false
end

# Set absolute path to upload images to
Spree::Image.attachment_definitions[:attachment][:path] = ':rails_root/public/system/spree/products/:id/:style/:basename.:extension';

# Set path relative to public/ to retrieve images from
Spree::Image.attachment_definitions[:attachment][:url] = '/system/spree/products/:id/:style/:basename.:extension';

Spree.user_class = "Spree::User"

Rails.application.config.to_prepare do
  require_dependency 'spree/authentication_helpers'
end
