Sequel.migration do
  change do
    create_table(:posts) do
      primary_key :id
      column :title, "varchar(255)"
      column :image_id, "varchar(255)"
    end
    
    create_table(:schema_migrations) do
      column :filename, "varchar(255)", :null=>false
      
      primary_key [:filename]
    end
  end
end
Sequel.migration do
  change do
    self << "INSERT INTO `schema_migrations` (`filename`) VALUES ('20150820151726_create_posts.rb')"
  end
end
