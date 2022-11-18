meta:
  id: random_quest_entrance_excel_config
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
    - ../ArrayType/array_of__aux_types__vlq_base128_le_u__length_u
    - ../EnumType/enum__logic_type
    - ../EnumType/enum__random_quest_filter_type
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: id
    type: aux_types::vlq_base128_le_u
    if: has_field_id
  - id: weight
    type: aux_types::vlq_base128_le_u
    if: has_field_weight
  - id: template_id
    type: aux_types::vlq_base128_le_u
    if: has_field_template_id
  - id: filter_logic_type
    type: enum__logic_type
    if: has_field_filter_logic_type
  - id: filter_list
    type: array_of__random_quest_filter_config__length_s
    if: has_field_filter_list
instances:
  has_field_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_weight: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_template_id: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_filter_logic_type: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_filter_list: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
types:
  array_of__random_quest_filter_config__length_s:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_s
      - id: data
        type: random_quest_filter_config
        repeat: expr
        repeat-expr: length.value
  random_quest_filter_config:
    seq:
      - id: bit_field
        type: aux_types::length_prefixed_bitfield
      - id: filter_type
        type: enum__random_quest_filter_type
        if: has_field_filter_type
      - id: filter_factor
        type: aux_types::string
        if: has_field_filter_factor
      - id: filter_param_list
        type: array_of__aux_types__vlq_base128_le_u__length_u
        if: has_field_filter_param_list
    instances:
      has_field_filter_type: # Field №0
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
      has_field_filter_factor: # Field №1
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
      has_field_filter_param_list: # Field №2
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
