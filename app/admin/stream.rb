ActiveAdmin.register Stream do
  index do
    column :name
    column :collegeName do |stream|
      CollegeInformation.find(stream.college_information_id).name if stream.college_information_id
    end
    actions
  end

  form do |f|
    f.inputs do
      f.input :name
      f.input :college_information_id, as: :select,
              :collection => CollegeInformation.all.map{ |college| [college.name, college.id] }
    end
    f.actions
  end
  show do |stream|
    attributes_table do
      row :name
      row :college_information_id
    end
  end


  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end

end
