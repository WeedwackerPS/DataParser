meta:
  id: config_attachment_data
  endian: le
  license: GPLv2
  imports:
    - ../../aux_types
    - ../Common/vector
seq:
  - id: bit_field
    type: u1
  - id: attach_map
    type: dict_of__aux_types__string_config_attachment
    if: has_field_attach_map
instances:
  has_field_attach_map: # Field №0
    value: (bit_field & 0b1) != 0
types:
  dict_of__aux_types__string_config_attachment:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: items
        type: kvp_of_aux_types__string_config_attachment
        repeat: expr
        repeat-expr: length.value
  kvp_of_aux_types__string_config_attachment:
    seq:
      - id: key
        type: aux_types::string
      - id: value
        type: config_attachment
  config_attachment:
    seq:
      - id: bit_field
        type: u1
      - id: slot_name
        type: aux_types::string
        if: has_field_slot_name
      - id: attach_path
        type: aux_types::string
        if: has_field_attach_path
      - id: effect_path
        type: aux_types::string
        if: has_field_effect_path
      - id: attach_pos
        type: vector
        if: has_field_attach_pos
      - id: attach_rot
        type: vector
        if: has_field_attach_rot
      - id: attach_scale
        type: vector
        if: has_field_attach_scale
    instances:
      has_field_slot_name: # Field №0
        value: (bit_field & 0b000001) != 0
      has_field_attach_path: # Field №1
        value: (bit_field & 0b000010) != 0
      has_field_effect_path: # Field №2
        value: (bit_field & 0b000100) != 0
      has_field_attach_pos: # Field №3
        value: (bit_field & 0b001000) != 0
      has_field_attach_rot: # Field №4
        value: (bit_field & 0b010000) != 0
      has_field_attach_scale: # Field №5
        value: (bit_field & 0b100000) != 0
