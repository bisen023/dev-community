class MembersController < ApplicationController
  before_action :authenticate_user!, only: %i[edit_description update_description edit_personal_details update_personal_details]
  def show
    @user = User.find(params[:id])
  end

  def edit_description
    respond_to do |format|
      format.turbo_stream {
        render turbo_stream: turbo_stream.replace("remote_modal", partial: "members/description_modal", locals: { user: current_user })
      }
    end
  end

  def update_description
    respond_to do |format|
      if current_user.update(about: params[:user][:about])
        format.turbo_stream{
          render turbo_stream: turbo_stream.replace("member-description", partial: "members/member_description", locals: {user: current_user})
        }
      end
    end
  end

  def edit_personal_details
    respond_to do |format|
      format.turbo_stream {
        render turbo_stream: turbo_stream.replace("remote_modal", partial: "members/personal_details", locals: { user: current_user })
      }
    end
  end

  def update_personal_details
    respond_to do |format|
      if current_user.update(update_member_personal_details)
        format.turbo_stream {
          render turbo_stream: turbo_stream.replace("update-personal-details", partial: "members/update_personal_details", locals: { user: current_user })
        }
      end
    end
  end

  private
  def update_member_personal_details
    params.require(:user).permit(:city, :state, :country, :pincode)
  end
end

