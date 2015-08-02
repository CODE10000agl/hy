class User_owned_datasetsController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.

  def after_sign_in_path_for(resource)
    entrances_show_path
  end

  def index
    @owned_datasets = Owned_dataset.all(:order => 'created_at')
  end


  private


      def sign_in_required
                  redirect_to new_user_session_url
          unless  user_signed_in?
      end
  end
end
