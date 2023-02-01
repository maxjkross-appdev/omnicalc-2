class ApplicationController < ActionController::Base
  def add
    render({ :template => "calculation_templates/add_form.html.erb" })
  end

  def wizard_add
    @first = params.fetch("first_num").to_f
    @second = params.fetch("second_num").to_f
    @result = @first + @second
    render({ :template => "calculation_templates/wizard_add_form.html.erb" })
  end
end
