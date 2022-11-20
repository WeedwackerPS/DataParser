meta:
  id: fish_bait_excel_config
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
    - ../ArrayType/array_of__aux_types__vlq_base128_le_u__length_u
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: id
    type: aux_types::vlq_base128_le_u
    if: has_field_id
  - id: feature_list
    type: array_of__fish_bait_feature__length_s
    if: has_field_feature_list
  - id: sort
    type: s1
    if: has_field_sort
  - id: pool_id_list
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_pool_id_list
instances:
  has_field_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_feature_list: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_sort: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_pool_id_list: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
types:
  array_of__fish_bait_feature__length_s:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_s
      - id: data
        type: fish_bait_feature
        repeat: expr
        repeat-expr: length.value
  fish_bait_feature:
    seq:
      - id: bit_field
        type: aux_types::length_prefixed_bitfield
      - id: feature_tag
        type: aux_types::vlq_base128_le_u
        if: has_field_feature_tag
      - id: weight
        type: f4
        if: has_field_weight
      - id: bonus_range
        type: f4
        if: has_field_bonus_range
    instances:
      has_field_feature_tag: # Field №0
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
      has_field_weight: # Field №1
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
      has_field_bonus_range: # Field №2
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
