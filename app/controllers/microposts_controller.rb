class MicropostsController < ApplicationController

  def index
    if params[:tag]
      @microposts = Micropost.tagged_with(params[:tag])
    else
      @microposts = Micropost.all
    end
  end

  def create
    @micropost = current_user.microposts.build(micropost_params)
    if @micropost.save
      flash[:success] = 'Micropost created!'
      redirect_to micropost_path(@micropost)
    else
      flash[:error] = 'Micropost not created! Title and post content are required fields.'
    end
  end

  def show
    @microposts = Micropost.find(params[:id])
  end

  def destroy
  end

  private

    def micropost_params
      params.require(:micropost).permit(:title, :content, :picture, :hawker_centre, :all_tags)
    end
end