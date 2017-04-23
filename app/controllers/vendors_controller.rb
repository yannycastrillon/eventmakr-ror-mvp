class VendorsController < UsersController
  before_action :authenticate_user!
  before_action :find_vendor, only:[:show,:update]
  # before_action :admin_only, :except => :show

  def index
    @vendors = Vendor.all
  end

  def show
    # unless current_user.admin?
    #   unless @vendor == current_user
    #     redirect_to root_path, :alert => "Access denied."
    #   end
    # end
  end

  def update

    if @vendor.update_attributes(secure_params)
      redirect_to vendors_path, :notice => "Vendor updated."
    else
      redirect_to vendors_path, :alert => "Unable to update vendor."
    end
  end

  def destroy
    vendor = Vendor.find(params[:id])
    vendor.destroy
    redirect_to vendors_path, :notice => "Vendor deleted."
  end

  private

  def find_vendor
    @vendor = Vendor.find(params[:id])
  end

  def admin_only
    unless current_user.admin?
      redirect_to root_path, :alert => "Access denied."
    end
  end

  def secure_params
    params.require(:user).permit(:role)
  end
end
