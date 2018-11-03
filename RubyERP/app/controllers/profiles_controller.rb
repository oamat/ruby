class ProfilesController < ApplicationController
  before_action :set_profile, only: [:edit, :update] #sólo mi profile
  before_action :set_other_profile, only: [:destroy] #Cualquier profile de mi empresa si soy administrador

  # GET /profiles
  def index
    @profiles = Profile.where("company_id=#{session[:company_id]} and id not in (#{session[:profile_id]})" )
  end

  # GET /profiles/new
  def new
    @profile = Profile.new
    @profile.active = 0
  end

  # GET /profiles/1/edit
  def edit
  end

  # POST /profiles
  def create
    @profile = Profile.new(profile_params)
    @profile.user_id  = session[:user_id] || current_user.id
    @profile.role = 0
    @profile.active  = 1
    if @profile.save
        session[:profile_id] = @profile.id
        flash[:success] = t(:profile_created)
        redirect_to :controller => :companies, :action => :new
      else
         render :new
      end
  end

  # PATCH/PUT /profiles/1
  def update
    @profile.user_id  = session[:user_id]
     if @profile.update(profile_params)
        flash[:success] = t(:profile_updated)
        redirect_to @profile
      else
        render :edit
      end
  end

  # DELETE /profiles/1
  def destroy
    if @profile.nil?
      user = User.find(profile.user_id)
      user.destroy
    end
    flash[:success] = t(:profile_deleted)
    redirect_to profiles_url
  end


  #PRIVATE METHODS#
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_profile
       @profile = Profile.where("user_id=#{session[:profile_id]}")
    end

    def set_other_profile
      @profile = Profile.where("id=#{params[:id]} AND company_id=#{session[:company_id]}")
    end

  # Never trust parameters from the scary internet, only allow the white list through.
    def profile_params
      params.require(:profile).permit(:name, :telephone, :position, :department, :birthday, :sex, :role, :active, :language, :user_id, :company_id)
    end
end
