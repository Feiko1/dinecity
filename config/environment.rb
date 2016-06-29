# Load the Rails application.
require File.expand_path('../application', __FILE__)


DEFAULT_META = YAML.load_file(Rails.root.join('config/meta.yml'))

# Initialize the Rails application.
Rails.application.initialize!
