require "refile/sequel"

Sequel::Model.extend Refile::Sequel::Attachment

aws = {
  access_key_id: "",
  secret_access_key: "",
  region: "",
  bucket: "",
}

Refile.cache = Refile::S3.new(prefix: "cache", **aws)
Refile.store = Refile::S3.new(prefix: "store", **aws)