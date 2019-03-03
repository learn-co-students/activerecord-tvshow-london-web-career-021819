class AddSeasonToShows < ActiveRecord::Migration

  def change
    add_column :shows, :season, :string
  end

end



# `db/migrate` folder, create another file, `002_add_season_to_shows.rb`, and write a migration to add a column, `season`, to the `shows` table. The datatype of this column is string.
