class Curriculo < ActiveRecord::Base

    has_many :experiencias
    has_many :entrevistas

    accepts_nested_attributes_for :experiencias,
                                                    reject_if: proc { |attributes| attributes['empresa'].blank? },
                                                    allow_destroy: true

    validates :nome, :email, :foto, presence: true
    has_attached_file :foto, styles: { :medium => "200x200#" }
    validates_attachment_content_type :foto, content_type: /\Aimage\/.*\Z/
end
