Sequel.migration do 
  change do

    create_table :posts do
      primary_key :id
      String :title
      String :image_id
    end

  end
end