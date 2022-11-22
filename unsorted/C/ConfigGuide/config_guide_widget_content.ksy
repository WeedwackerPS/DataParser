types:
  config_guide_widget_content:
    seq:
      - id: bit_field
        type: aux_types::vlq_base128_le_u
      - id: path
        type: aux_types::string
        if: has_field_path
      - id: context_name
        type: aux_types::string
        if: has_field_context_name
      - id: hint_info
        type: aux_types::string
        if: has_field_hint_info
      - id: widght_info
        type: aux_types::string
        if: has_field_widght_info
      - id: warning_info
        type: aux_types::string
        if: has_field_warning_info
      - id: white_context_list
        type: array_of__aux_types__string__length_u
        if: has_field_white_context_list
      - id: action_info_list
        type: array_of__enum__input_action_type__length_u
        if: has_field_action_info_list
      - id: input_hint_list
        type: array_of__config_input_hint__length_u
        if: has_field_input_hint_list
      - id: widght_info_pos
        type: enum__widget_info_pos
        if: has_field_widght_info_pos
      - id: mask_type
        type: enum__mask_guide_type
        if: has_field_mask_type
      - id: mask_pass_easy_touch
        type: u1
        if: has_field_mask_pass_easy_touch
      - id: type
        type: enum__button_guide_type
        if: has_field_type
      - id: x_offset
        type: f4
        if: has_field_x_offset
      - id: y_offset
        type: f4
        if: has_field_y_offset
      - id: hint_offset
        type: f4
        if: has_field_hint_offset
      - id: special
        type: enum__guide_widget_special_type
        if: has_field_special
      - id: value
        type: f4
        if: has_field_value
      - id: value_str
        type: aux_types::string
        if: has_field_value_str
      - id: page_type
        type: enum__guide_page_type
        if: has_field_page_type
      - id: mask_index
        type: aux_types::vlq_base128_le_s
        if: has_field_mask_index
      - id: keep_scale
        type: u1
        if: has_field_keep_scale
    instances:
      has_field_path: # Field №0
        value: (bit_field.value & 00000000000001) != 0
      has_field_context_name: # Field №1
        value: (bit_field.value & 00000000000010) != 0
      has_field_hint_info: # Field №2
        value: (bit_field.value & 00000000000100) != 0
      has_field_widght_info: # Field №3
        value: (bit_field.value & 00000000001000) != 0
      has_field_warning_info: # Field №4
        value: (bit_field.value & 00000000010000) != 0
      has_field_white_context_list: # Field №5
        value: (bit_field.value & 00000000100000) != 0
      has_field_action_info_list: # Field №6
        value: (bit_field.value & 00000001000000) != 0
      has_field_input_hint_list: # Field №7
        value: (bit_field.value & 00000010000000) != 0
      has_field_widght_info_pos: # Field №8
        value: (bit_field.value & 00000100000000) != 0
      has_field_mask_type: # Field №9
        value: (bit_field.value & 00001000000000) != 0
      has_field_mask_pass_easy_touch: # Field №10
        value: (bit_field.value & 00010000000000) != 0
      has_field_type: # Field №11
        value: (bit_field.value & 00100000000000) != 0
      has_field_x_offset: # Field №12
        value: (bit_field.value & 01000000000000) != 0
      has_field_y_offset: # Field №13
        value: (bit_field.value & 0b000000010000000000000) != 0
      has_field_hint_offset: # Field №14
        value: (bit_field.value & 0b000000100000000000000) != 0
      has_field_special: # Field №15
        value: (bit_field.value & 0b000001000000000000000) != 0
      has_field_value: # Field №16
        value: (bit_field.value & 0b000010000000000000000) != 0
      has_field_value_str: # Field №17
        value: (bit_field.value & 0b000100000000000000000) != 0
      has_field_page_type: # Field №18
        value: (bit_field.value & 0b001000000000000000000) != 0
      has_field_mask_index: # Field №19
        value: (bit_field.value & 0b010000000000000000000) != 0
      has_field_keep_scale: # Field №20
        value: (bit_field.value & 0b100000000000000000000) != 0
