ActiveAdmin.register Section do
  index do
    column :name
    column :streamName do |section|
      Stream.find(section.stream_id).name if section.stream_id
    end
    actions
  end

  form do |f|
    f.inputs do
      f.input :name
      f.input :stream_id, as: :select,:collection => Stream.all.map{ |stream| [stream.name, stream.id] }
    end
    f.actions
  end

  show do |section|
    attributes_table do
      row :name
      row :stream_id
    end
  end
end
