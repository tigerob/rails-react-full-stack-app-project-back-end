class ApplicationController < ActionController::API
    include Knock::Authenticatable
end
