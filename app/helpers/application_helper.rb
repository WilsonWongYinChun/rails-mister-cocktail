module ApplicationHelper
  def fa_icon(name)
    content_tag(:i, '', class: ['fa', name])
  end
end
