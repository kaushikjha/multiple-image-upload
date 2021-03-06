module UsersHelper

  def fields_for_image(field_name, &block)
    prefix = field_name.new_record? ? 'new' : 'existing'
    fields_for("user[#{prefix}_image_attributes][]", field_name, &block)
  end

  def add_image_link(name)
    link_to_function name do |page|
      page.insert_html :bottom, :image, :partial => "image", :object => Image.new
    end
  end
end
