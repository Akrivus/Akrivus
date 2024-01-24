class InstallNeighborCube < ActiveRecord::Migration[7.1]
  def change
    enable_extension "cube"
  end
end
