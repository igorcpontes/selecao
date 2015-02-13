class Curriculo < ActiveRecord::Base
    has_attached_file :foto, styles: { :medium => "200x200#" }
    validates_attachment_content_type :foto, content_type: /\Aimage\/.*\Z/
end
