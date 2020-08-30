# frozen_string_literal: true

# Here will be code that test `Validation` module.
class ValidationTest
  include Validation

  def run
    validate!
    valid?
    Validation.validate
  end
end
