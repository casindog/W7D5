class Api::UsersController < ApplicationController
  def create
    # debugger
    @user = User.new(user_params)
    @user.save
  end

  def user_params
    params.require(:user).permit(:username, :password)
  end
end
# $.ajax({method: "post", url: '/api/user', data: {user: { username: 'bradlun', password: 'test123'}} })
