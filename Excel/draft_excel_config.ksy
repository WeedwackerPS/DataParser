meta:
  id: draft_excel_config
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
    - ../EnumType/enum__draft_exec_type
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: id
    type: aux_types::vlq_base128_le_u
    if: has_field_id
  - id: transfer_config
    type: array_of__draft_transfer_config__length_s
    if: has_field_transfer_config
  - id: scene_id
    type: aux_types::vlq_base128_le_u
    if: has_field_scene_id
  - id: exec
    type: enum__draft_exec_type
    if: has_field_exec
  - id: param
    type: aux_types::vlq_base128_le_u
    if: has_field_param
  - id: enable_mp
    type: u1
    if: has_field_enable_mp
  - id: is_need_all_agree
    type: u1
    if: has_field_is_need_all_agree
  - id: confirm_count_down
    type: aux_types::vlq_base128_le_u
    if: has_field_confirm_count_down
  - id: min_player_count
    type: aux_types::vlq_base128_le_u
    if: has_field_min_player_count
  - id: is_need_twice_confirm
    type: u1
    if: has_field_is_need_twice_confirm
  - id: twice_confirm_count_down
    type: aux_types::vlq_base128_le_u
    if: has_field_twice_confirm_count_down
  - id: is_exec_when_count_down_over
    type: u1
    if: has_field_is_exec_when_count_down_over
instances:
  has_field_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_transfer_config: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_scene_id: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_exec: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_param: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_enable_mp: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_is_need_all_agree: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_confirm_count_down: # Field №7
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
  has_field_min_player_count: # Field №8
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000001) != 0)
  has_field_is_need_twice_confirm: # Field №9
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000010) != 0)
  has_field_twice_confirm_count_down: # Field №10
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000100) != 0)
  has_field_is_exec_when_count_down_over: # Field №11
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00001000) != 0)
types:
  array_of__draft_transfer_config__length_s:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_s
      - id: data
        type: draft_transfer_config
        repeat: expr
        repeat-expr: length.value
  draft_transfer_config:
    seq:
      - id: bit_field
        type: aux_types::length_prefixed_bitfield
      - id: group_id
        type: aux_types::vlq_base128_le_u
        if: has_field_group_id
      - id: config_id
        type: aux_types::vlq_base128_le_u
        if: has_field_config_id
    instances:
      has_field_group_id: # Field №0
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
      has_field_config_id: # Field №1
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)