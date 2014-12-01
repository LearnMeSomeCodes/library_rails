module ApplicationHelper


  def render_model_errors(model)
    if model.errors.any?
      render partial: "shared/model_errors", locals: {model: model}
    end
  end

end
