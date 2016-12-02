class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string   :youtube_id, null: false

      t.timestamps(null: false)
    end
  end
end
