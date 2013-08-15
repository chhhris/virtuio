Rails.configuration.stripe = {
  :publishable_key => 'pk_test_9ei9lPR5eL6F2B6sXnMuPZF6',
  :secret_key      => 'sk_test_avtQwlBh8TDFQJ7ocTwZpfFX'
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]