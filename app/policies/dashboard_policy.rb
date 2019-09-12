class DashboardPolicy < Struct.new(:user, :dashboard)
  def profile?
    user != nil
  end

  def units?
    user != nil
  end
end
