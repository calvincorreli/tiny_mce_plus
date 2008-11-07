module ApplicationConfiguration
  require 'ostruct'
  require 'yaml'  
  if File.exists?( File.join(RAILS_ROOT, 'config', 'application.yml') )
    file = File.join(RAILS_ROOT, 'config', 'application.yml')
    users_app_config = YAML.load_file file
  end
  
  ::AppConfig = OpenStruct.new users_app_config
end

AppConfig.advanced_mce_options = {
    :theme => 'advanced',
    :browsers => %w{msie gecko safari},
    :theme_advanced_layout_manager => "SimpleLayout",
    :theme_advanced_statusbar_location => "bottom",
    :theme_advanced_toolbar_location => "top",
    :theme_advanced_toolbar_align => "left",
    :theme_advanced_resizing => true,
    :relative_urls => false,
    :convert_urls => false,
    :cleanup => true,
    :cleanup_on_startup => true,  
    :convert_fonts_to_spans => true,
    :theme_advanced_resize_horizontal => false,
    :theme_advanced_buttons1 => %w{formatselect fontsizeselect bold italic underline forecolor backcolor separator justifyleft justifycenter justifyright indent outdent separator bullist numlist separator link unlink image media separator undo redo help code},
    :theme_advanced_buttons2 => [],
    :theme_advanced_buttons3 => [],
    :plugins => %w{media preview curblyadvimage inlinepopups safari simplepaste},
    :plugin_preview_pageurl => '../../../../../posts/preview',
    :plugin_preview_width => "950",
    :plugin_preview_height => "650",
    :editor_deselector => "mceNoEditor",
    :extended_valid_elements => "img[class|src|flashvars|border=0|alt|title|hspace|vspace|width|height|align|onmouseover|onmouseout|name|obj|param|embed|scale|wmode|salign|style],embed[src|quality|scale|salign|wmode|bgcolor|width|height|name|align|type|pluginspage|flashvars],object[align<bottom?left?middle?right?top|archive|border|class|classid|codebase|codetype|data|declare|dir<ltr?rtl|height|hspace|id|lang|name|style|tabindex|title|type|usemap|vspace|width]",
    :paste_as_plain_text => true,
    :paste_create_paragraphs => true,
    :paste_create_linebreaks => false,
    :paste_use_dialog => true,
    :paste_convert_middot_lists => false,
    :paste_remove_spans => true,
    :paste_remove_styles => true,
    :paste_strip_class_attributes => 'all',
    :force_p_newlines => true,
    :paste_convert_headers_to_tag => 'h3',
    :paste_unindented_list_class => "unindentedList"
  }

AppConfig.default_mce_options = {
    :theme => 'advanced',
    :browsers => %w{msie gecko safari},
    :theme_advanced_layout_manager => "SimpleLayout",
    :theme_advanced_statusbar_location => "bottom",
    :theme_advanced_toolbar_location => "top",
    :theme_advanced_toolbar_align => "left",
    :theme_advanced_resizing => true,
    :relative_urls => false,
    :convert_urls => false,
    :cleanup => true,
    :cleanup_on_startup => true,  
    :convert_fonts_to_spans => true,
    :theme_advanced_resize_horizontal => false,
    :theme_advanced_buttons1 => %w{bold italic underline separator justifyleft justifycenter justifyright indent outdent separator bullist numlist separator link unlink image media separator undo redo help code},
    :theme_advanced_buttons2 => [],
    :theme_advanced_buttons3 => [],
    :plugins => %w{media preview curblyadvimage inlinepopups safari simplepaste},
    :plugin_preview_pageurl => '../../../../../posts/preview',
    :plugin_preview_width => "950",
    :plugin_preview_height => "650",
    :editor_deselector => "mceNoEditor",
    :extended_valid_elements => "img[class|src|flashvars|border=0|alt|title|hspace|vspace|width|height|align|onmouseover|onmouseout|name|obj|param|embed|scale|wmode|salign|style],embed[src|quality|scale|salign|wmode|bgcolor|width|height|name|align|type|pluginspage|flashvars],object[align<bottom?left?middle?right?top|archive|border|class|classid|codebase|codetype|data|declare|dir<ltr?rtl|height|hspace|id|lang|name|style|tabindex|title|type|usemap|vspace|width]",
    :paste_as_plain_text => true,
    :paste_create_paragraphs => true,
    :paste_create_linebreaks => false,
    :paste_use_dialog => true,
    :paste_convert_middot_lists => false,
    :paste_remove_spans => true,
    :paste_remove_styles => true,
    :paste_strip_class_attributes => 'all',
    :force_p_newlines => true,
    :paste_convert_headers_to_tag => 'h3',
    :paste_unindented_list_class => "unindentedList"
  }
  
AppConfig.simple_mce_options = {
    :theme => 'advanced',
    :browsers => %w{msie gecko safari},
    :cleanup_on_startup => true,
    :convert_fonts_to_spans => true,
    :theme_advanced_resizing => true, 
    :theme_advanced_toolbar_location => "top",  
    :theme_advanced_statusbar_location => "bottom", 
    :editor_deselector => "mceNoEditor",
    :theme_advanced_resize_horizontal => false,  
    :theme_advanced_buttons1 => %w{bold italic underline separator bullist numlist separator link unlink image separator help},
    :theme_advanced_buttons2 => [],
    :theme_advanced_buttons3 => [],
    :plugins => %w{inlinepopups safari curblyadvimage simplepaste},
    :paste_as_plain_text => true,
    :paste_create_paragraphs => true,
    :paste_create_linebreaks => false,
    :paste_use_dialog => true,
    :paste_convert_middot_lists => false,
    :paste_remove_spans => true,
    :paste_remove_styles => true,
    :paste_strip_class_attributes => 'all',
    :force_p_newlines => true,
    :paste_convert_headers_to_tag => 'h3',
    :paste_unindented_list_class => "unindentedList"
  }