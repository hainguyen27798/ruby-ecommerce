class BasePresenter < SimpleDelegator
  attr_reader :model, :view

  def initialize(model, view)
    @model = model
    @view = view
    super(model)
  end
end
