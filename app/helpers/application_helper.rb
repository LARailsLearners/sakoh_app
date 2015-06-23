module ApplicationHelper
  def flash_class(flash_key)
    case flash_key
    when "notice" then "alert alert-info"
    when "success" then "alert alert-success"
    when "error" then "alert alert-danger"
    when "alert" then "alert alert-danger"
    when "devise_error_messages" then "alert alert-danger"
    else "alert"
    end
  end
end
