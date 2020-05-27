class UsersController < ApplicationController
    def index
    @users = User.all
        if @users
        render json: UserSerializer.new(@users).serialized_json
        else
        render json: {
            status: 500,
            errors: ['no users found']
        }
        end
    end


    def show
    @user = User.find(params[:id])
        if @user
        render render json: UserSerializer.new(@users).serialized_json
        else
        render json: {
            status: 500,
            errors: ['user not found']
        }
        end
    end
  
    def create
        @user = User.new(user_params)
        if @user.save
        login!
        render json: {
            status: :created,
            user: @user
        }
        else 
        render json: {
            status: 500,
            errors: @user.errors.full_messages
        }
        end
    end
  
  private
  
    def user_params
        params.require(:user).permit(:username, :email, :password, :password_confirmation)
    end
end




















# class UsersController < ApplicationController
#     before_action :find_user, only: [:show, :edit, :update]

#     def index
#         binding.pry
#         @users = User.all
#         # render json: @users
#         render json: UserSerializer.new(@users).serialized_json
#         puts UserSerializer.new(@users).serialized_json


#     end
    
#     def show
#         render json: UserSerializer.new(@user).serialized_json
#     end
    

#     def new
#         @user = User.new
#     end

#     def create
#         # @existing_user = User.find_by(username: params[:username])
#         @user = User.new(user_params)

#         if @user.save
#             console.log('success')
#         else
#             console.log('failure')
#         end
#     end

#     def login
        
#     end

#     # def tallies
#     #     @tallies = Tally.find { |tally| 
#     #         tally.creator === @user
#     #     } 
#     # end
    



# private

#     def find_user
#         @user = User.find(params[:id])
#     end

#     def user_params
#         params.require(:user).permit(:name, :email, :catch_phrase)
#     end


# end
