module MyAuth
  def login_from_session
    self.current_user = Account.find_by_id(session[:account_id]) if session[:account_id]
  end

  def current_user=(new_user)
    session[:account_id] = new_user ? new_user.id : nil
    @current_user = new_user || false
  end

  def current_user
    @current_user ||= login_from_session unless @current_user == false
  end

  def authorized?
    !!current_user
  end

  def login_required
    authorized? || access_denied
  end

  def access_denied
    respond_to do |format|
      format.html do
        store_location
        redirect_to login_path
      end
    end
  end

  def store_location
    session[:return_to] = request.fullpath
  end

  def redirect_back_or_default(options={ }, response_status_and_flash={ })
    redirect_to(session[:return_to] || options, response_status_and_flash)
    session[:return_to] = nil
  end

  def logout_killing_session!
    reset_session
  end

end
