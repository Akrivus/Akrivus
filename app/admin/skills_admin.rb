Trestle.resource(:skills) do
  menu do
    group :input_data do
      item :skills, icon: "fa fa-code"
    end
  end

  table do
    column :name
    column :created_at
    actions
  end

  form do |skill|
    text_field :icon
    text_field :color
    text_field :name
  end

  params do |params|
    params.require(:skill).permit(:icon, :color, :name)
  end
end
