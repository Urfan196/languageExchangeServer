class FluencySerializer < ActiveModel::Serializer
  attributes :id, :level, :language
  belongs_to :language
end
