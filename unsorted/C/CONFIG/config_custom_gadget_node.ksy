types:
  config_custom_gadget_node:
    seq:
      - id: bit_field
        type: u1
      - id: custom_gadget_type
        type: enum__custom_gadget_type
        if: has_field_custom_gadget_type
      - id: camera_settings
        type: custom_gadget_camera_settings
        if: has_field_camera_settings
      - id: slot_map
        type: dict_of__aux_types__string_custom_gadget_node_slot
        if: has_field_slot_map
    instances:
      has_field_custom_gadget_type: # Field №0
        value: (bit_field & 0b001) != 0
      has_field_camera_settings: # Field №1
        value: (bit_field & 0b010) != 0
      has_field_slot_map: # Field №2
        value: (bit_field & 0b100) != 0
