class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :current_order

  def current_order
    @order = session[:order_id].nil? ? Order.new : Order.find(session[:order_id])
  end
end
