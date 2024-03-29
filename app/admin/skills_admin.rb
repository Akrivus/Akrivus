Trestle.resource(:skills) do
  menu do
    item :skills, icon: "fa fa-star"
  end

  # Customize the table columns shown on the index view.
  #
  table do
    column :name
    column :created_at, align: :center
    actions
  end

  # Customize the form fields shown on the new/edit views.
  #
  form do |skill|
    text_field :icon
    text_field :name
    text_area :content, rows: 10
    number_field :proficiency

    collection_check_boxes :experience_ids, Experience.all, :id, :name, { label: 'Experience' }
    
    datetime_field :started_at
  end

  # By default, all parameters passed to the update and create actions will be
  # permitted. If you do not have full trust in your users, you should explicitly
  # define the list of permitted parameters.
  #
  # For further information, see the Rails documentation on Strong Parameters:
  #   http://guides.rubyonrails.org/action_controller_overview.html#strong-parameters
  #
  params do |params|
    params.require(:skill).permit(:icon, :name, :content, :proficiency, :started_at)
  end
end
