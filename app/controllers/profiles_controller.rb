class ProfilesController < ApplicationController
  before_action :set_profile, only: [:show, :edit, :update]



  def show
  end



  def edit
  end


  

  def update
    respond_to do |format|
      if @profile.update(profile_params)
        format.html { redirect_to @profile, notice: 'Vous venez de modifier votre profil avec succès.' }
  
      else
        format.html { render :edit }
 
      end
    end
  end



  private
    # Use callbacks to share common setup or constraints between actions.
    def set_profile
      @profile = Profile.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def profile_params
      params.require(:profile).permit(:description, :skills, :linkedin_url, :age, :city, :user_id, :sector_id)
    end
end
