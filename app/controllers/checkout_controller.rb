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

    order_subtotal = 0

    planets.each do |planet|
      order_subtotal += (planet.cost * 100).round(2).to_i
    end

    user_province = Province.find(current_user.province_id)

    @session = Stripe::Checkout::Session.create(
      payment_method_types: ["card"],
      success_url:          checkout_success_url + "?session_id={CHECKOUT_SESSION_ID}",
      cancel_url:           checkout_cancel_url,
      line_items:           [
        line_items,
        {
          name:        "GST",
          description: "Goods and Services Tax",
          amount:      (order_subtotal * user_province.gst_rate).round(2).to_i,
          currency:    "cad",
          quantity:    1
        },
        {
          name:        "PST",
          description: "Provincial Sales Tax",
          amount:      (order_subtotal * user_province.pst_rate).round(2).to_i,
          currency:    "cad",
          quantity:    1
        },
        {
          name:        "HST",
          description: "Harmonized Sales Tax",
          amount:      (order_subtotal * user_province.hst_rate).round(2).to_i,
          currency:    "cad",
          quantity:    1
        }
      ]
    )

    Order.create(
      total:     @session.amount_total,
      sub_total: order_subtotal,
      item:      line_items,
      user_id:   current_user.id,
      status:    "Pending"
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
