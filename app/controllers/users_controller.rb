class UsersController < ApplicationController
  def index
    @user = User.new
  end

  def results
    session[:counter] ||= 0
    @user = User.create( user_params )
    if @user.save
      flash[:notice]=session[:counter] += 1
    end
  end

  private
    def user_params
      params.require(:user).permit(:name, :language, :location, :comment)
    end

end

#another way to do flash messages

# if @user.save
#   flash[:notice] = ['Thanks for submitting this form! You have submitted this form ']
#   flash[:notice] << session[:counter]   << = push
#   flash[:notice] << [" times now."]
# end

# .erb
# <% if flash[:notice] %>
#     <%= flash[:notice].join %>
# <% end %>
