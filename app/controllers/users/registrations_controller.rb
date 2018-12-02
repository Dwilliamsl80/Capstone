 #frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
   before_action :configure_sign_up_params, only: [:create]
   before_action :configure_account_update_params, only: [:update]

   # GET /users/sign_up
  def new

    # Override Devise default behaviour and create a renter as well
    build_resource({})
    resource.build_renter
    respond_with self.resource
  end

   #POST /resource
   def create
     super
   end

   #GET /resource/edit
   def edit
     super
   end

  # PUT /resource
   def update
     super
   end

   #DELETE /resource
   def destroy
     super
   end

   #GET /resource/cancel
   def cancel
     super
   end

   protected

   #If you have extra params to permit, append them to the sanitizer.
   def configure_sign_up_params
     devise_parameter_sanitizer.permit(:sign_up) { |u|
      u.permit(:email, :password, :password_confirmation, renter_attributes: 
        [:id, :first_name, :last_name, :apartment_id])
    }
   end

  # If you have extra params to permit, append them to the sanitizer.
   def configure_account_update_params
     devise_parameter_sanitizer.permit(:account_update, keys: [:attribute])
     devise_parameter_sanitizer.permit(:user_picture)
     
   end

   #The path used after sign up.
   def after_sign_up_path_for(resource)
     super(resource)
   end

   #The path used after sign up for inactive accounts.
   def after_inactive_sign_up_path_for(resource)
     super(resource)
   end

  protected
  def configure_permitted_parameters
    #devise_parameter_sanitizer.permit(:sign_up, :email, :password, :password_confirmation, 
    #  [{ renter_attributes: :first_name, :last_name, :apartment_id }])
    #params.require(:project).permit(:name,  project_criteria: [:name, :type, :benefit] )
    devise_parameter_sanitizer.permit(:sign_up) { |u|
      u.permit(:email, :password, :password_confirmation, :user_picture, renter_attributes: 
        [:id, :first_name, :last_name, :apartment_id])
    }
  end
end
