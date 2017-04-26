Rails.application.routes.draw do
  get "raise_exception", to: "my_tests#raise_exception", as: "raise_exception"
  get "raise_standard_error", to: "my_tests#raise_standard_error", as: "raise_standard_error"
end
