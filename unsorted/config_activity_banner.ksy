types:
  config_activity_banner:
    seq:
      - id: bit_field
        type: u1
      - id: condition_defines
        type: dict_of__aux_types__string_disp__context_condition
        if: has_field_condition_defines
      - id: action_defines
        type: dict_of__aux_types__string_disp__context_action
        if: has_field_action_defines
      - id: update_groups
        type: array_of__context_condition_action_group__length_u
        if: has_field_update_groups
      - id: click_groups
        type: array_of__context_condition_action_group__length_u
        if: has_field_click_groups
    instances:
      has_field_condition_defines: # Field №0
        value: (bit_field & 0b0001) != 0
      has_field_action_defines: # Field №1
        value: (bit_field & 0b0010) != 0
      has_field_update_groups: # Field №2
        value: (bit_field & 0b0100) != 0
      has_field_click_groups: # Field №3
        value: (bit_field & 0b1000) != 0
