class WidgetsController < ApplicationController 
  
  def index
    @widgets = [
      OpenStruct.new(id: 1, name: "Stembolt"),
      OpenStruct.new(id: 2, name: "Flux Capacitor"),
  ]
  end
  def show
    # manufacturer = OpenStruct.new( 
    #   id: rand(100),
    #   name: "Sector 7G",
    #   address: OpenStruct.new(id: rand(100), country: "UK")
    #   )
    # @widget = OpenStruct.new(id: params[:id],
    #                         manufacturer_id: manufacturer.id,
    #                         manufacturer: manufacturer,
    #                         name: "Widget #{params[:id]}")
    # def @widget.widget_id
    #   if self.id.to_s.length < 3
    #     self.id.to_s 
    #   else
    #     self.id.to_s[0..-3] + "." + self.id.to_s[-2..-1]
    #   end 
    # end
    
    @widget = Widget.find(params[:id])
  end 
  
  def new
    @widget = Widget.new
    @manufacturers = Manufacturer.all
    
    # @widget.errors.add(:name,           :blank)
    #  @widget.errors.add(:manufacturer_id,:blank)
    #  @widget.errors.add(:price_cents,    :not_a_number) 
  end
  
  def create
    @widget = Widget.create(
      name: params.require(:widget)[:name],
        price_cents: params.require(:widget)[:price_cents],
        manufacturer_id: params.require(:widget)[:manufacturer_id],
        widget_status: WidgetStatus.first)
    if @widget.valid?
      redirect_to widget_path(@widget)
    else
      @manufacturers = Manufacturer.all
      render :new
    end
  end
end