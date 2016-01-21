class Users::RegistrationssController < Devise::RegistrationssController
  
  def create
    super do |resource|
      if params[:plan]
        resource.olan_id = params[:plan]
        if resource.plan_id == 2
          resource.save_with_payment
        else
          resource.save
        end
    end
  end
  
end