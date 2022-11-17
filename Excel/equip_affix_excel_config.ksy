meta:
  id: equip_affix_excel_config
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
    - ../ArrayType/array_of__f4__length_u
    - Common/array_of__prop_val_config__length_s
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: affix_id
    type: aux_types::vlq_base128_le_u
    if: has_field_affix_id
  - id: id
    type: aux_types::vlq_base128_le_u
    if: has_field_id
  - id: level
    type: aux_types::vlq_base128_le_u
    if: has_field_level
  - id: name
    type: aux_types::vlq_base128_le_u
    if: has_field_name
  - id: desc
    type: aux_types::vlq_base128_le_u
    if: has_field_desc
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
  has_field_affix_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_id: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_level: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_name: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_desc: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_open_config: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_add_props: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_param_list: # Field №7
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
