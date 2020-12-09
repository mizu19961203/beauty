class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception


  def after_sign_in_path_for(resource)
    case resource
    # when Admin
    #   admin_posts_path
    when current_user
      home_index_path
    end
  end

#   def after_inactive_sign_up_path_for(resource)
#     case resource
#     # when Admin
#     #   admin_posts_path
#     root_path
#   end


# 　def after_sign_out_path_for(resource)
#   case resource
#     # when Admin
#     #   admin_posts_path
# 　  root_path
# 　end
end


