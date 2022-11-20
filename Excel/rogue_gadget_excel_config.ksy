meta:
  id: rogue_gadget_excel_config
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
    - ../EnumType/enum__rogue_create_gadget_type
    - ../EnumType/enum__rogue_gadget_state_type
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: id
    type: aux_types::vlq_base128_le_u
    if: has_field_id
  - id: gadget_type
    type: enum__rogue_create_gadget_type
    if: has_field_gadget_type
  - id: gadget_id
    type: aux_types::vlq_base128_le_u
    if: has_field_gadget_id
  - id: gadget_state_config_list
    type: array_of__rogue_gadget_state_config__length_s
    if: has_field_gadget_state_config_list
instances:
  has_field_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_gadget_type: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_gadget_id: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_gadget_state_config_list: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
types:
  array_of__rogue_gadget_state_config__length_s:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_s
      - id: data
        type: rogue_gadget_state_config
        repeat: expr
        repeat-expr: length.value
  rogue_gadget_state_config:
    seq:
      - id: bit_field
        type: aux_types::length_prefixed_bitfield
      - id: state
        type: enum__rogue_gadget_state_type
        if: has_field_state
      - id: gadget_state
        type: aux_types::vlq_base128_le_u
        if: has_field_gadget_state
    instances:
      has_field_state: # Field №0
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
      has_field_gadget_state: # Field №1
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
