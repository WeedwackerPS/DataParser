meta:
  id: compound_excel_config
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
    - ../EnumType/enum__compound_type
    - Common/array_of__id_count_config__length_s
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: id
    type: aux_types::vlq_base128_le_u
    if: has_field_id
  - id: group_id
    type: aux_types::vlq_base128_le_u
    if: has_field_group_id
  - id: name
    type: aux_types::vlq_base128_le_u
    if: has_field_name
  - id: rank_level
    type: aux_types::vlq_base128_le_u
    if: has_field_rank_level
  - id: type
    type: enum__compound_type
    if: has_field_type
  - id: is_default_unlocked
    type: u1
    if: has_field_is_default_unlocked
  - id: cost_time
    type: aux_types::vlq_base128_le_u
    if: has_field_cost_time
  - id: queue_size
    type: aux_types::vlq_base128_le_u
    if: has_field_queue_size
  - id: input_vec
    type: array_of__id_count_config__length_s
    if: has_field_input_vec
  - id: output_vec
    type: array_of__id_count_config__length_s
    if: has_field_output_vec
  - id: icon
    type: aux_types::string
    if: has_field_icon
  - id: desc
    type: aux_types::vlq_base128_le_u
    if: has_field_desc
  - id: count_desc
    type: aux_types::vlq_base128_le_u
    if: has_field_count_desc
instances:
  has_field_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_group_id: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_name: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_rank_level: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_type: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_is_default_unlocked: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_cost_time: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_queue_size: # Field №7
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
  has_field_input_vec: # Field №8
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000001) != 0)
  has_field_output_vec: # Field №9
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000010) != 0)
  has_field_icon: # Field №10
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000100) != 0)
  has_field_desc: # Field №11
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00001000) != 0)
  has_field_count_desc: # Field №12
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00010000) != 0)
