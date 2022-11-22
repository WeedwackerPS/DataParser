types:
  config_logo_page_setting:
    seq:
      - id: bit_field
        type: u1
      - id: default_config
        type: config_logo_page
        if: has_field_default_config
      - id: logo_config_map
        type: dict_of__aux_types__string_config_logo_page
        if: has_field_logo_config_map
      - id: logo_folder_path
        type: aux_types::string
        if: has_field_logo_folder_path
      - id: tip_img_aw_folder_path
        type: aux_types::string
        if: has_field_tip_img_aw_folder_path
    instances:
      has_field_default_config: # Field №0
        value: (bit_field & 0b0001) != 0
      has_field_logo_config_map: # Field №1
        value: (bit_field & 0b0010) != 0
      has_field_logo_folder_path: # Field №2
        value: (bit_field & 0b0100) != 0
      has_field_tip_img_aw_folder_path: # Field №3
        value: (bit_field & 0b1000) != 0
