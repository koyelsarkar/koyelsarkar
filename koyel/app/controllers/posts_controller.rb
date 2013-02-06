class PostsController < ApplicationController
 def new
  @user=User.find(params[:user_id])
  @post=@user.posts.new
 end
 def create
  @user=User.find(params[:user_id])
  @post=@user.posts.create(params[:post])
  @post.save!
  redirect_to user_path(@user)
 end
 def edit
  @user=User.find(params[:user_id])
  @post=@user.posts.find(params[:id])
 end
 def update
  user=User.find(params[:user_id])
  post=user.posts.find(params[:id])
  post.update_attributes(params[:post])
  post.save!
  redirect_to user_path(user)
 end
 def show
  @user=User.find(params[:user_id])
  @post=@user.posts.find(params(:id))
 end
 def destroy
  @user=User.find(params[:user_id])
  @post=@user.posts.find(params[:id])
  @post.destroy
  redirect_to user_path(@user)
 end
end
