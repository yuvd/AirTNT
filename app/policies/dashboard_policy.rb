class DashboardPolicy < Struct.new(:user, :dashboard)
  def profile?
    user != nil
  end
end
