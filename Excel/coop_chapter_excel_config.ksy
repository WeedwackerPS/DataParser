meta:
  id: coop_chapter_excel_config
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
    - ../ArrayType/array_of__aux_types__vlq_base128_le_u__length_u
    - Common/array_of__coop_cond_config__length_s
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: id
    type: aux_types::vlq_base128_le_u
    if: has_field_id
  - id: avatar_id
    type: aux_types::vlq_base128_le_u
    if: has_field_avatar_id
  - id: chapter_name
    type: aux_types::vlq_base128_le_u
    if: has_field_chapter_name
  - id: coop_page_title
    type: aux_types::vlq_base128_le_u
    if: has_field_coop_page_title
  - id: chapter_sort_id
    type: aux_types::vlq_base128_le_u
    if: has_field_chapter_sort_id
  - id: avatar_sort_id
    type: aux_types::vlq_base128_le_u
    if: has_field_avatar_sort_id
  - id: chapter_icon
    type: aux_types::string
    if: has_field_chapter_icon
  - id: unlock_cond
    type: array_of__coop_cond_config__length_s
    if: has_field_unlock_cond
  - id: unlock_cond_tips
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_unlock_cond_tips
  - id: open_material_id
    type: aux_types::vlq_base128_le_u
    if: has_field_open_material_id
  - id: open_material_num
    type: aux_types::vlq_base128_le_u
    if: has_field_open_material_num
  - id: begin_time_str
    type: aux_types::string
    if: has_field_begin_time_str
  - id: confidence_value
    type: aux_types::vlq_base128_le_u
    if: has_field_confidence_value
  - id: point_graph_path
    type: aux_types::string
    if: has_field_point_graph_path
  - id: graph_x_ratio
    type: f4
    if: has_field_graph_x_ratio
  - id: graph_y_ratio
    type: f4
    if: has_field_graph_y_ratio
instances:
  has_field_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_avatar_id: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_chapter_name: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_coop_page_title: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_chapter_sort_id: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_avatar_sort_id: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_chapter_icon: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_unlock_cond: # Field №7
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
  has_field_unlock_cond_tips: # Field №8
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000001) != 0)
  has_field_open_material_id: # Field №9
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000010) != 0)
  has_field_open_material_num: # Field №10
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000100) != 0)
  has_field_begin_time_str: # Field №11
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00001000) != 0)
  has_field_confidence_value: # Field №12
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00010000) != 0)
  has_field_point_graph_path: # Field №13
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00100000) != 0)
  has_field_graph_x_ratio: # Field №14
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b01000000) != 0)
  has_field_graph_y_ratio: # Field №15
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b10000000) != 0)
