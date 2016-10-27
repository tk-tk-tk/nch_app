module ApplicationHelper
  def resource_name
    :sign
  end

  def resource
    @resource ||= Sign.new
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:sign]
  end
end
