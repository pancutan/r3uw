class AddDataToTables < ActiveRecord::Migration
  ErrorType.create(:errortype => 'Ortografia o Gramatica')
  ErrorType.create(:errortype => 'Error Tecnico')
  ErrorType.create(:errortype => 'Sugerencia')
end
