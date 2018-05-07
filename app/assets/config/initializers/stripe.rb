Rails.configuration.stripe = {
  :publishable_key ='pk_test_hvAC9aLKnIjMjcRfAkvjWDRw'
  :secret_key      = 'sk_test_lVsPlXWuCWEWMlptBiwk6dLF'
}

Stripe.api_key = Rails.configuration.stripe[:publishable_key]
