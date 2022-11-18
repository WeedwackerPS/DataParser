meta:
  id: dragon_spine_mission_excel_config
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
    - ../ArrayType/array_of__aux_types__string__length_u
    - ../EnumType/enum__dragon_spine_mission_finish_exec_type
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: id
    type: aux_types::vlq_base128_le_u
    if: has_field_id
  - id: chapter_id
    type: aux_types::vlq_base128_le_u
    if: has_field_chapter_id
  - id: watcher_id
    type: aux_types::vlq_base128_le_u
    if: has_field_watcher_id
  - id: finish_exec
    type: array_of__dragon_spine_mission_finish_config__length_s
    if: has_field_finish_exec
instances:
  has_field_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_chapter_id: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_watcher_id: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_finish_exec: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
types:
  array_of__dragon_spine_mission_finish_config__length_s:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_s
      - id: data
        type: dragon_spine_mission_finish_config
        repeat: expr
        repeat-expr: length.value
  dragon_spine_mission_finish_config:
    seq:
      - id: bit_field
        type: aux_types::length_prefixed_bitfield
      - id: type
        type: enum__dragon_spine_mission_finish_exec_type
        if: has_field_type
      - id: param
        type: array_of__aux_types__string__length_u
        if: has_field_param
    instances:
      has_field_type: # Field №0
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
      has_field_param: # Field №1
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)