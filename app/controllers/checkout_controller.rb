class CheckoutController < ApplicationController
  def create
    planets = Planet.find(params[:planet_ids])

    if planets.nil?
      redirect_to root_path
      nil
    end

    line_items = planets.map do |planet|
      {
        name:        planet.name,
        description: planet.description,
        amount:      (planet.cost * 100).round(2).to_i,
        currency:    "cad",
        quantity:    1
      }
    end

    @session = Stripe::Checkout::Session.create(
      payment_method_types: ["card"],
      success_url:          checkout_success_url + "?session_id={CHECKOUT_SESSION_ID}",
      cancel_url:           checkout_cancel_url,
      line_items:           [
        line_items
      ]
    )

    respond_to do |format|
      format.js
    end
  end

  def success
    @session = Stripe::Checkout::Session.retrieve(params[:session_id])
    @payment_intent = Stripe::PaymentIntent.retrieve(@session.payment_intent)
  end

  def cancel
    # b
  end
end
