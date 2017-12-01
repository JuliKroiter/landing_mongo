class GridfsController < ApplicationController
  include Mongoid::GridFsHelper

  def serve
    file = Mongoid::GridFs.find(request.path.gsub("/uploads/grid/", ""))
    if file
      content = file.data

      if stale?(etag: content, last_modified: file.uploadDate.utc, public: true)
        send_data content, type: file.content_type, disposition: "inline"
        expires_in 0, public: true
      end
    end
  end
end
