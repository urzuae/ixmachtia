class ContentType < ApplicationRecord
  has_many :contents

  serialize :file_types
end
