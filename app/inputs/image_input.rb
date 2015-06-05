class ImageInput < SimpleForm::Inputs::FileInput
  def input(wrapper_options = nil)
    version = input_html_options.delete(:preview_version)
    out = ActiveSupport::SafeBuffer.new
    if object.send("#{attribute_name}?")
      out << template.content_tag(:p, template.image_tag(object.send(attribute_name, version)))
    end
    out << @builder.file_field(attribute_name, input_html_options)
  end
end