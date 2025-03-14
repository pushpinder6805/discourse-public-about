# name: discourse-public-about
# version: 1.0
# description: Allows anonymous access to /about page even if login_required is enabled

after_initialize do
  require_dependency 'about_controller'

  class ::AboutController
    skip_before_action :redirect_to_login_if_required, only: [:show]
  end
end
