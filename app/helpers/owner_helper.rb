module OwnerHelper
  def owner_active_tab?(tab)
    request.path.include?(tab)
  end

  def owner_tab_css_class(tab)
    "active" if owner_active_tab?(tab)
  end
end
