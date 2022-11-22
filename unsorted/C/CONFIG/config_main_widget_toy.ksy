types:
  config_main_widget_toy:
    seq:
      - id: bit_field
        type: u1
      - id: gadget_config_map
        type: dict_of__aux_types__vlq_base128_le_u_config_widget_gadget
        if: has_field_gadget_config_map
      - id: cd_group_config_map
        type: dict_of__aux_types__vlq_base128_le_u_config_widget_cd_group
        if: has_field_cd_group_config_map
      - id: widget_config_map
        type: dict_of__aux_types__vlq_base128_le_u_disp__config_base_widget_toy
        if: has_field_widget_config_map
    instances:
      has_field_gadget_config_map: # Field №0
        value: (bit_field & 0b001) != 0
      has_field_cd_group_config_map: # Field №1
        value: (bit_field & 0b010) != 0
      has_field_widget_config_map: # Field №2
        value: (bit_field & 0b100) != 0
