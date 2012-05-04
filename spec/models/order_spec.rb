require 'spec_helper'

describe Order do

  it "accepts nested attributes for order_details" do

    Order.class_eval do
      attr_accessible :order_details_attributes
    end

    order = Order.create(FactoryGirl.attributes_for(:order)
                           .update(order_details_attributes:{
                                     0 => FactoryGirl.attributes_for(:order_detail)
                                       .update(order_id:nil)
                                   }))

    order.order_details.count.should eq(1)
  end
end
