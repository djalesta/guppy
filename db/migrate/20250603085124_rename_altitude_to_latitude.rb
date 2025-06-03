class RenameAltitudeToLatitude < ActiveRecord::Migration[7.1]
  def change
    rename_column :fish, :altitude, :latitude
  end
end
