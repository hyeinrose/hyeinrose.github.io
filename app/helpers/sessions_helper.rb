module SessionsHelper

  # 전달된 사용자로 로그인
  def log_in(user)
    session[:user_id] = user.id
  end

  # 현재 로그인 한 사용자를 반환(로그인 한 경우에만)
  # 널일경우 뒤에꺼 실행해서 집어넣는다. 널이 아니면 처리하지 않아서 DB를 한번만 읽게한다. 
  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
    # (1)
    # if @current_user.nil?
    #   @current_user = User.find_by(id: session[:user_id])
    # else
    #   @current_user = @current_user
    # end
    # (2)
    # @current_user = @current_user || User.find_by(id: session[:user_id])
  end

  # 로그인 되어있다면 true 를 그렇지 않다면 false 를 반환
  def user_signed_in?
    !current_user.nil?
  end

  # session[:user_id]와 @current_user 삭제
  def log_out
    session.delete(:user_id)
  end
end