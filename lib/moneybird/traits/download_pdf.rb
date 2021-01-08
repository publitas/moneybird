module Moneybird
  module Traits
    module DownloadPdf
      def download_pdf_path(resource)
        [path, resource.path, '/download_pdf'].join('')
      end

      def download_pdf(resource, options = {})
        client.get_redirect_url(download_pdf_path(resource))
      end
    end
  end
end
