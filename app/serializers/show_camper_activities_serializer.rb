class ShowCamperActivitiesSerializer < ActiveModel::Serializer
  attributes :id, :name, :difficulty

  # has_one :camper
end
