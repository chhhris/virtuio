Rails.configuration.stripe = {
  :publishable_key => 'sk_test_avtQwlBh8TDFQJ7ocTwZpfFX',
  :secret_key      => 'pk_test_9ei9lPR5eL6F2B6sXnMuPZF6'
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]