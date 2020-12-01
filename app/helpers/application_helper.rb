module ApplicationHelper

   def current_class?(test_path)
   if request.path == test_path
     'nav-active'
  else
    return 'icons'
  end
end
end
