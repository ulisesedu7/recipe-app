class MeasurementUnitChangeColumnType < ActiveRecord::Migration[7.0]
  def change
    change_column(:foods, :measurement_unit, :string, using: 'measurement_unit::character varying')
  end
end
