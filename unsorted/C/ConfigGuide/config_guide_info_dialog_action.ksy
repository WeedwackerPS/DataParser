types:
  config_guide_info_dialog_action:
    seq:
      - id: base
        type: config_guide_action
      - id: bit_field
        type: u1
      - id: title
        type: aux_types::string
        if: has_field_title
      - id: content
        type: aux_types::string
        if: has_field_content
      - id: on_ok_actions
        type: array_of__disp__config_base_guide__length_u
        if: has_field_on_ok_actions
      - id: on_cancel_actions
        type: array_of__disp__config_base_guide__length_u
        if: has_field_on_cancel_actions
    instances:
      has_field_title: # Field №0
        value: (bit_field & 0b0001) != 0
      has_field_content: # Field №1
        value: (bit_field & 0b0010) != 0
      has_field_on_ok_actions: # Field №2
        value: (bit_field & 0b0100) != 0
      has_field_on_cancel_actions: # Field №3
        value: (bit_field & 0b1000) != 0
