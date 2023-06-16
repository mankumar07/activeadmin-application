ActiveAdmin.register Banner do
  permit_params :name, :is_active, :sequence, :banner

  form do |f|
    f.inputs "Banner Details" do
      f.input :name
      f.input :banner, as: :file
      # f.input :arabic_banner, as: :file
      f.input :is_active
      f.input :sequence, uniqueness: true
    end
    f.actions
  end

  show title: "Show Banner" do
    attributes_table do
    #   row :english_banner do |img|
    #     image_tag img.english_banner, width:200,height:200 if img.english_banner.present?
    #   end
      row :name
      row :banner do |img|
        image_tag img.banner, width:200,height:200 if img.banner.present?
      end
      row :is_active
      row :sequence
    end
  end


end
