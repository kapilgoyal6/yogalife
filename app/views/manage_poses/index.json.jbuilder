json.array!(@manage_poses) do |manage_pose|
  json.extract! manage_pose, :id, :title, :sub_category, :author, :pose_image, :desc
  json.url manage_pose_url(manage_pose, format: :json)
end
