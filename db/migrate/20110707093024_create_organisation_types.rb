class CreateOrganisationTypes < ActiveRecord::Migration
  def change
    create_table :organisation_types do |t|
      t.string :title
      t.string :description

      t.timestamps
    end
  end
end
