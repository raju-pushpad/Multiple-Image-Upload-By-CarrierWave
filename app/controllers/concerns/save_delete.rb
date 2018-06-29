module Save_delete
  extend ActiveSupport::Concern

  def create
  	@user=User.new(name: params[:user][:name])
  	if @user.save
      save_image(params[:user][:profile][:image])
    end
    redirect_to welcome_path(@user)  	
  end

  def destroy
    @data=Profile.find(params[:id])
    @id=@data.user_id
    delete_image(@data)
    redirect_to welcome_path(@id)
  end

  end