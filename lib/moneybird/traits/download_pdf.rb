module Moneybird
  module Traits
    module DownloadPdf
      def download_pdf(id)
        client.get("#{path}/#{id}/download_pdf")
      end
    end
  end
end
