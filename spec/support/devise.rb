## need this for devise is authenticate_user :before_filter
RSpec.configure do |config|
  config.include Devise::TestHelpers, :type => :controller
end
