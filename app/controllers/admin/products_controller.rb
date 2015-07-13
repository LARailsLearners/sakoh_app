class Admin::ProductsController < ProductsController
  layout 'admin'
  before_action :ensure_admin! 
end
