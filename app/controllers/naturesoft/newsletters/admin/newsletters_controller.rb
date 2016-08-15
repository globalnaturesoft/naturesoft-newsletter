module Naturesoft
  module Newsletters
    module Admin
      class NewslettersController < Naturesoft::Admin::AdminController
        before_action :set_newsletter, only: [:show, :edit, :update, :destroy]
        before_action :default_breadcrumb
        
        # add top breadcrumb
        def default_breadcrumb
          add_breadcrumb "Newsletter", naturesoft_newsletters.admin_newsletters_path
          add_breadcrumb "Newsletters", naturesoft_newsletters.admin_newsletters_path
        end
    
        # GET /newsletters
        def index
          @newsletters = Newsletter.search(params).paginate(:page => params[:page], :per_page => 10)
        end
    
        # GET /newsletters/1
        def show
        end
    
        # GET /newsletters/new
        def new
          @newsletter = Newsletter.new
          add_breadcrumb "New Banner", nil,  class: "active"
        end
    
        # GET /newsletters/1/edit
        def edit
          add_breadcrumb "Edit Banner", nil,  class: "active"
        end
    
        # POST /newsletters
        def create
          @newsletter = Newsletter.new(newsletter_params)
    
          if @newsletter.save
            redirect_to @newsletter, notice: 'Newsletter was successfully created.'
          else
            render :new
          end
        end
    
        # PATCH/PUT /newsletters/1
        def update
          if @newsletter.update(newsletter_params)
            redirect_to @newsletter, notice: 'Newsletter was successfully updated.'
          else
            render :edit
          end
        end
    
        # DELETE /newsletters/1
        def destroy
          @newsletter.destroy
          render text: 'Newsletter was successfully destroyed.'
        end
        
        # DELETE /newsletters/delete?ids=1,2,3
        def delete
          @newsletters = Newsletter.where(id: params[:ids].split(","))
          @newsletters.destroy_all
          render text: 'Newsletter(s) was successfully destroyed.'
        end
    
        private
          # Use callbacks to share common setup or constraints between actions.
          def set_newsletter
            @newsletter = Newsletter.find(params[:id])
          end
    
          # Only allow a trusted parameter "white list" through.
          def newsletter_params
            params.fetch(:newsletter, {}).permit(:email)
          end
      end
    end
  end
end
