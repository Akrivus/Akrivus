Trestle.resource(:experiences) do
  menu do
    item :experiences, icon: "fa fa-user-tie"
  end

  # Customize the table columns shown on the index view.
  #
  table do
    column :category
    column :name
    column :title
    column :created_at, align: :center
    actions
  end

  # Customize the form fields shown on the new/edit views.
  #
  form do |experience|
    text_field :category
    text_field :name
    text_field :title
    text_area :content

    collection_check_boxes :skill_ids, Skill.all, :id, :name, { label: 'Skills' }

    row do
      col { datetime_field :started_at }
      col { datetime_field :ended_at }
    end
  end

  # By default, all parameters passed to the update and create actions will be
  # permitted. If you do not have full trust in your users, you should explicitly
  # define the list of permitted parameters.
  #
  # For further information, see the Rails documentation on Strong Parameters:
  #   http://guides.rubyonrails.org/action_controller_overview.html#strong-parameters
  #
  params do |params|
    params.require(:experience).permit(:category, :name, :title, :content, :started_at, :ended_at, skill_ids: [])
  end
end
