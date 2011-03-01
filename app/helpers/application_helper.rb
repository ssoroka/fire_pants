module ApplicationHelper
  def flash_messages
    out = %()
    flash.keys.each{|k|
      out << content_tag('div', flash[k], :class => "flash #{k}")
    }
    raw(out)
  end
end
