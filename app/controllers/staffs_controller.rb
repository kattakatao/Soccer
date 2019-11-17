class StaffsController < ApplicationController

  def index
    @staffs = Staff.all
  end

  def new
    @staff = Staff.new
  end

  def create
    @staff = Staff.new(staff_params)
    @staff.admin_user_id = current_admin_user.id
    @staff.save
      redirect_to staffs_path
  end

  private
    def staff_params
      params.require(:staff).permit(:admin_user_id, :staff_name, :part, :introduction, :image_id)
    end
end
