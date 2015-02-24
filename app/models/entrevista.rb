class Entrevista < ActiveRecord::Base
    belongs_to :curriculo
    belongs_to :user
end
