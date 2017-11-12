class MicropostsController < ApplicationController

  def index
    @microposts = Micropost.all
  end

  def create
    @micropost = current_user.microposts.build(micropost_params)
    if @micropost.save
      flash[:success] = 'Micropost created!'
    else
      flash[:error] = 'Micropost not created!'
    end
  end

  def destroy
  end

  private

    def micropost_params
      params.require(:micropost).permit(:title, :content, :picture, :hawker)
    end
end