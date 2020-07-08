class MicropostsController < ApplicationController
  before_action :signed_in_user, only: [:create, :destroy]
  before_action :correct_user, only: :destroy

  def create
    @micropost = current_user.microposts.build(micropost_params)
    if @micropost.save
      flash[:success] = "Micropost create!"
      redirect_to root_url
    else
      @feed_items = []
      render 'static_pages/home'
    end
  end

  def destroy
    @micropost.destroy 
    # page_after_delete = request.referer
    # count_post = current_user.microposts.count
    first = request.referer.to_s.split("=")
    page_number = current_user.microposts.count / 10
    if current_user.microposts.count % 10 == 0 && first[1].to_i == page_number + 1
      redirect_to first[0] + "=" + page_number.to_s
    else
      redirect_to request.referer
    end
  end

  private
    def micropost_params
      params.require(:micropost).permit(:content)
    end

    def correct_user
      @micropost = current_user.microposts.find_by(id: params[:id])
      redirect_to root_url if @micropost.nil?
    end
end
