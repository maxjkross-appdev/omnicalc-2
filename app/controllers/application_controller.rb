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

  def subtract
    render({ :template => "calculation_templates/subtract_form.html.erb" })
  end

  def wizard_subtract
    @first = params.fetch("first_num").to_f
    @second = params.fetch("second_num").to_f
    @result = @first - @second
    render({ :template => "calculation_templates/wizard_subtract_form.html.erb" })
  end

  def multiply
    render({ :template => "calculation_templates/multiply_form.html.erb" })
  end

  def wizard_multiply
    @first = params.fetch("first_num").to_f
    @second = params.fetch("second_num").to_f
    @result = @first * @second
    render({ :template => "calculation_templates/wizard_multiply_form.html.erb" })
  end

  def divide
    render({ :template => "calculation_templates/divide_form.html.erb" })
  end

  def wizard_divide
    @first = params.fetch("first_num").to_f
    @second = params.fetch("second_num").to_f
    @result = @first / @second
    render({ :template => "calculation_templates/wizard_divide_form.html.erb" })
  end
end
