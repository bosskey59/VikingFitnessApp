class CreateVikingValhallas < ActiveRecord::Migration[5.2]
  def change
    create_table :viking_valhallas do |t|
		t.belongs_to :viking
	    t.belongs_to :valhalla
	    
      t.timestamps
    end
  end
end
