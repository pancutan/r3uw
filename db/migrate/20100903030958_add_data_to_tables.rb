class AddDataToTables < ActiveRecord::Migration
  ErrorType.create(:errortype => 'Ortografía / Gramática')
  ErrorType.create(:errortype => 'Error Técnico')
  ErrorType.create(:errortype => 'Sugerencia')
end
