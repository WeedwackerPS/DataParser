meta:
  id: random_quest_template_excel_config
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
    - ../ArrayType/array_of__aux_types__string__length_u
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: main_id
    type: aux_types::vlq_base128_le_u
    if: has_field_main_id
  - id: elem_list
    type: array_of__random_quest_elem__length_s
    if: has_field_elem_list
instances:
  has_field_main_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_elem_list: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
types:
  array_of__random_quest_elem__length_s:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_s
      - id: data
        type: random_quest_elem
        repeat: expr
        repeat-expr: length.value
  random_quest_elem:
    seq:
      - id: bit_field
        type: aux_types::length_prefixed_bitfield
      - id: name
        type: array_of__aux_types__string__length_u
        if: has_field_name
      - id: pool_id
        type: aux_types::vlq_base128_le_u
        if: has_field_pool_id
    instances:
      has_field_name: # Field №0
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
      has_field_pool_id: # Field №1
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
