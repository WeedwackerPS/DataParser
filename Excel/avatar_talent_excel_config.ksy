meta:
  id: avatar_talent_excel_config
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
    - ../ArrayType/array_of__f4__length_u
    - Common/array_of__prop_val_config__length_s
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: talent_id
    type: aux_types::vlq_base128_le_u
    if: has_field_talent_id
  - id: name
    type: aux_types::vlq_base128_le_u
    if: has_field_name
  - id: desc
    type: aux_types::vlq_base128_le_u
    if: has_field_desc
  - id: icon
    type: aux_types::string
    if: has_field_icon
  - id: prev_talent
    type: aux_types::vlq_base128_le_u
    if: has_field_prev_talent
  - id: main_cost_item_id
    type: aux_types::vlq_base128_le_u
    if: has_field_main_cost_item_id
  - id: main_cost_item_count
    type: aux_types::vlq_base128_le_u
    if: has_field_main_cost_item_count
  - id: vice_cost_item_id
    type: aux_types::vlq_base128_le_u
    if: has_field_vice_cost_item_id
  - id: vice_cost_item_count
    type: aux_types::vlq_base128_le_u
    if: has_field_vice_cost_item_count
  - id: open_config
    type: aux_types::string
    if: has_field_open_config
  - id: add_props
    type: array_of__prop_val_config__length_s
    if: has_field_add_props
  - id: param_list
    type: array_of__f4__length_u
    if: has_field_param_list
instances:
  has_field_talent_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_name: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_desc: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_icon: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_prev_talent: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_main_cost_item_id: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_main_cost_item_count: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_vice_cost_item_id: # Field №7
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
  has_field_vice_cost_item_count: # Field №8
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000001) != 0)
  has_field_open_config: # Field №9
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000010) != 0)
  has_field_add_props: # Field №10
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000100) != 0)
  has_field_param_list: # Field №11
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00001000) != 0)
