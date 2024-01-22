Trestle.resource(:projects) do
  menu do
    group :input_data do
      item :projects, icon: "fa fa-stream"
    end
  end

  table do
    column :name
    column :started_at
    column :ended_at
    column :created_at
    actions
  end

  form do |skill|
    text_field :image_key
    text_field :icon
    text_field :color
    text_field :name

    row do
      date_field :started_at
      date_field :ended_at
    end

    text_area :content
  end

  params do |params|
    params.require(:project).permit(:image_key, :icon, :color, :name, :content, :started_at, :ended_at)
  end
  
  controller do
    def index
      super
    end

    def show
      super
    end

    def new
      super if current_user.admin?
    end

    def create
      super if current_user.admin?
    end

    def edit  
      super if current_user.admin?
    end

    def update
      super if current_user.admin?
    end

    def destroy
      super if current_user.admin?
    end
  end
end
