module ApplicationHelper

  def program_type_selection
    ["Multicultural", "BI", "Bicultural"]
  end

  def can_present?(can_present)
    can_present ? "Si" : "No"
  end
end
