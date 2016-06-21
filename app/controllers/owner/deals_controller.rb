module Owner
  class DealsController < Owner::BaseController
    def index
    end

    def edit
    end

    def new
      raise
      @deal = Deal.new
    end

    def create
      @deal = Deal.new(deal_params)
      if @deal.save
        flash[:success] = "Deal was successfully created"
        redirect_to owner_deals_path(@deal)
      else
        render 'new'
    end

    def update
      if @deal.update(deal_path)
        flash[:success] = "Deal was successfully updated"
        redirect_to owner_deals_path(@deal)
        else
        render 'edit'
        end
      end
    end

    def show

    end

    def destroy
      @deal.destroy
      flash[:danger] = "Deal was successfully deleted"
      redirect_to deal_path
    end

    private
    def deal_params
      params.require(:deal).permit(:name, :description)
    end

  end
end
