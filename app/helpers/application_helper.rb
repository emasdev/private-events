module ApplicationHelper
  def hide_if_not_login
    return 'd-none' if current_user.nil?
  end
end
