class Entrevista < ActiveRecord::Base
    belongs_to :curriculo
    belongs_to :user

    rails_admin do
        configure :curriculo do
          label 'Currículo desta entrevista: '
        end
    end

    rails_admin do
        configure :user do
            label 'Usuário desta entrevista: '
        end
    end
end
