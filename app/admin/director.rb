ActiveAdmin.register Director do
  #permit_params :name,:email,:college_information_id
  index do
    column :name
    column :email
    column :status do |director|
      director.invitation_accepted_at ? "Accepted" : "Pending"
    end
    column :collegeName do |director|
      CollegeInformation.find(director.college_information_id).name if director.college_information_id
    end
    actions
  end

  form do |f|
    f.inputs do
      f.input :name
      f.input :email
      f.input :college_information_id,as: :select,:collection => CollegeInformation.all.
          map{ |college| [college.name, college.id]unless college.director.present? }
    end
    f.actions
  end

  show do |director|
    attributes_table do
      row :name
      row :email
      row :college_information_id
    end
  end


end
