# Load the Rails application.
require File.expand_path('../application', __FILE__)
#SIMNAO = { "Sim" => "Sim", "Não" => "Não" }
# Initialize the Rails application.
Time::DATE_FORMATS[:data_br] = "%d/%m/%Y"
Time::DATE_FORMATS[:dia_semana] = "%A"
Time::DATE_FORMATS[:hora] = "%H:%M horas"
Rails.application.initialize!
