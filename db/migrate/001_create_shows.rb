class CreateShows < ActiveRecord::Migration

  def change
    create_table :shows do |t|
      t.string :name
      t.string :network
      t.string :day
      t.integer :rating
    end
  end

end

# In this file, write the migration code to create a `shows` table. The table should have `name`,
# `network`, `day`, and `rating` columns. `name`, `network`, and `day` have a datatype of string, and
# `rating` has a datatype of integer.
# * Create an `app` folder with a `models` folder within it, and then create a file, `show.rb`, in
# `app/models`. In this file, you will define a `Show` class that inherits from `ActiveRecord::Base`.
# * Now we need to create a second migration to add another column to our `shows` table. In the
# `db/migrate` folder, create another file, `002_add_season_to_shows.rb`, and write a migration to add a column, `season`, to the `shows` table. The datatype of this column is string.
