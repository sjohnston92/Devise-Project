class BucketListsController < ApplicationController
  before_action :set_bucket_list, only: [:show, :edit]

  def index
    @bucket_lists = BucketList.all
  end

  def show
  end

  def new
    @bucket_list = BucketList.new
    render partial: "form"
  end

  def create
    #inspect params here
      #pinding.pry
    @bucket_list = BucketList.new(bucket_list_params)
    
    if @bucket_list.save
     redirect_to bucket_list_path
    else
      render :new
    end
    end

  def edit
  end

def destroy
  
end

private

def bucket_list_params
params.require(:bucket_list).permit(:name, :location)
end

def set_bucket_list
  @bucket_list = BucketList.find(params[:id])
end

end
