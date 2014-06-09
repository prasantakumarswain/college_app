ActiveAdmin.register CollegeInformation do

  index do
    column :name
    column :address
    actions
  end
  form do |f|
    f.inputs "college_detail" do
      f.input :name
      f.input :address
    end
    f.actions
  end

  show do |college|
    attributes_table do
      row :name
      row :address
    end
  end
end
