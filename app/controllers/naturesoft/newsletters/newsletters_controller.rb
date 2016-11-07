module Naturesoft
  module Newsletters
    class NewslettersController < Naturesoft::FrontendController
      before_action :set_newsletter, only: [:add_newsletter]
      
      def add_email
        @newsletter = Newsletter.new(newsletter_params)
  
        if @newsletter.save
          render text: 'Your email was successfully registered.'
        else
          render text: 'Your email has been registered (or wrong format).'
        end
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
