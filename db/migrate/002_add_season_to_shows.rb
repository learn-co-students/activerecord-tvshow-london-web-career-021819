# Add column class
class AddSeasonToShows < ActiveRecord::Migration
  def change
    change_table(:shows) do |t|
      t.column :season, :string
    end
  end
end
