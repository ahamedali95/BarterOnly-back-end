class ApplicationController < ActionController::API
  def get_secret
    ENV["JWT_SECRET"]
  end

  #Token is accessed from the header of the request.
  def get_token
    request.headers["Authorization"]
  end

  def get_decoded_token
    begin
      decoded_token = JWT.decode get_token(), get_secret(), true, {algorithm: "HS256"}
      return decoded_token
    rescue JWT::DecodeError
      return nil
    end
  end

  def authenticated?
    !!get_decoded_token
  end

  def requires_login
    if !authenticated?
      render json: {
        message: "Invalid authorization token"
      }
    end
  end

  def requires_user_match
    @user = User.find(params[:id])
    
    if @user.id != get_decoded_token[0]["userId"]
      render json: {
        message: "You do not have access to this"
      }, status: :unauthorized
    end
  end
end
