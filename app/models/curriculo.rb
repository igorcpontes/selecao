class Curriculo < ActiveRecord::Base

    has_many :escolaridades
    has_many :experiencias

    accepts_nested_attributes_for :escolaridades,
                                                    reject_if: proc { |attributes| attributes['instituicao'].blank? },
                                                    allow_destroy: true
    accepts_nested_attributes_for :experiencias,
                                                    reject_if: proc { |attributes| attributes['empresa'].blank? },
                                                    allow_destroy: true

    validates :nome, :email, :foto, presence: true
    has_attached_file :foto, styles: { :medium => "200x200#" }
    validates_attachment_content_type :foto, content_type: /\Aimage\/.*\Z/
end
