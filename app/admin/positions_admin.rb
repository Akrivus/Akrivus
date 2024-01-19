Trestle.resource(:positions) do
  menu do
    group :input_data do
      item :positions, icon: "fa fa-user-tie"
    end
  end

  table do
    column :title
    column :name
    column :started_at
    column :ended_at
    column :created_at
    actions
  end

  form do |skill|
    text_field :image_key
    text_field :title
    text_field :name

    row do
      date_field :started_at
      date_field :ended_at
    end

    text_area :content
  end

  params do |params|
    params.require(:position).permit(:image_key, :title, :name, :content, :started_at, :ended_at)
  end
end
