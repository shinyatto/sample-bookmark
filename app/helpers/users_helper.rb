module UsersHelper
  def people_link_to(user)
    people_path(:nickname => user.nickname)
  end
end
