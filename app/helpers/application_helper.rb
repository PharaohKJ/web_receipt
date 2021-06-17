module ApplicationHelper
  def nl2br(str)
    h(str).gsub(/\R/, "<br>")
  end
end
