meta:
  id: forge_excel_config
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
    - ../ArrayType/array_of__aux_types__vlq_base128_le_u__length_u
    - Common/array_of__id_count_config__length_s
    - Common/array_of__random_item_config__length_s
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: id
    type: aux_types::vlq_base128_le_u
    if: has_field_id
  - id: player_level
    type: aux_types::vlq_base128_le_u
    if: has_field_player_level
  - id: is_default_show
    type: u1
    if: has_field_is_default_show
  - id: effective_world_levels
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_effective_world_levels
  - id: forge_type
    type: aux_types::vlq_base128_le_u
    if: has_field_forge_type
  - id: show_item_id
    type: aux_types::vlq_base128_le_u
    if: has_field_show_item_id
  - id: result_item_id
    type: aux_types::vlq_base128_le_u
    if: has_field_result_item_id
  - id: result_item_count
    type: aux_types::vlq_base128_le_u
    if: has_field_result_item_count
  - id: main_random_drop_id
    type: aux_types::vlq_base128_le_u
    if: has_field_main_random_drop_id
  - id: main_forge_random_id
    type: aux_types::vlq_base128_le_u
    if: has_field_main_forge_random_id
  - id: forge_time
    type: aux_types::vlq_base128_le_u
    if: has_field_forge_time
  - id: queue_num
    type: aux_types::vlq_base128_le_u
    if: has_field_queue_num
  - id: scoin_cost
    type: aux_types::vlq_base128_le_u
    if: has_field_scoin_cost
  - id: random_items
    type: array_of__random_item_config__length_s
    if: has_field_random_items
  - id: material_items
    type: array_of__id_count_config__length_s
    if: has_field_material_items
  - id: priority
    type: aux_types::vlq_base128_le_u
    if: has_field_priority
  - id: forge_point
    type: aux_types::vlq_base128_le_u
    if: has_field_forge_point
  - id: forge_point_notice
    type: aux_types::vlq_base128_le_u
    if: has_field_forge_point_notice
instances:
  has_field_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_player_level: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_is_default_show: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_effective_world_levels: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_forge_type: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_show_item_id: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_result_item_id: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_result_item_count: # Field №7
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
  has_field_main_random_drop_id: # Field №8
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000001) != 0)
  has_field_main_forge_random_id: # Field №9
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000010) != 0)
  has_field_forge_time: # Field №10
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000100) != 0)
  has_field_queue_num: # Field №11
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00001000) != 0)
  has_field_scoin_cost: # Field №12
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00010000) != 0)
  has_field_random_items: # Field №13
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00100000) != 0)
  has_field_material_items: # Field №14
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b01000000) != 0)
  has_field_priority: # Field №15
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b10000000) != 0)
  has_field_forge_point: # Field №16
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00000001) != 0)
  has_field_forge_point_notice: # Field №17
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00000010) != 0)
