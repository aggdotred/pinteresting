class VideosController < ApplicationController
  before_action :set_video, only: [:show, :edit, :update, :destroy]
  before_action :require_admin, except: [:index, :show]
  before_action :authenticate_user!, except: [:index]

  def index
    @videos = Video.all.order("created_at").paginate(:page => params[:page], :per_page => 1)
  end

  def show
  end


  def new
    @video = current_user.videos.build
  end


  def edit
  end

  def create
    @video = current_user.videos.build(video_params)
    if @video.save
      redirect_to @video, notice: 'Video was successfully created.'
    else
      render :new       
    end   
  end

 
  def update
    if @video.update(video_params)
      redirect_to @video, notice: 'Video was successfully updated.'
    else
      render :edit
    end
  end

  
  def destroy
    @video.destroy
    redirect_to videos_url, notice: 'Video was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_video
      @video = Video.find(params[:id])
    end

    def require_admin
        @user = current_user
        redirect_to videos_path, notice: "Not authorized." if @user.admin != true
    end


    # Never trust parameters from the scary internet, only allow the white list through.
    def video_params
      params.require(:video).permit(:description, :image)
    end
  
end
