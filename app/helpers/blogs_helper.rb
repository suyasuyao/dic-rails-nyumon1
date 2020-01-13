module BlogsHelper
  def choose_new_or_edit
    binding.pry
    if action_name == "new" || action_name == "confirm" || action_name == "create"
      confirm_blogs_path
    elsif action_name == "edit"
      blog_path
    end
  end
end
