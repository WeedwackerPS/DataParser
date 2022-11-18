meta:
  id: expedition_data_excel_config
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
    - ../EnumType/enum__expedition_open_cond_type
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: id
    type: aux_types::vlq_base128_le_u
    if: has_field_id
  - id: name
    type: aux_types::vlq_base128_le_u
    if: has_field_name
  - id: city_id
    type: aux_types::vlq_base128_le_u
    if: has_field_city_id
  - id: open_condition_vec
    type: array_of__expedition_open_condition__length_s
    if: has_field_open_condition_vec
  - id: time_reward_vec
    type: array_of__expedition_reward__length_s
    if: has_field_time_reward_vec
  - id: description
    type: aux_types::vlq_base128_le_u
    if: has_field_description
  - id: picture
    type: aux_types::string
    if: has_field_picture
  - id: pos_x
    type: f4
    if: has_field_pos_x
  - id: pos_y
    type: f4
    if: has_field_pos_y
instances:
  has_field_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_name: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_city_id: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_open_condition_vec: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_time_reward_vec: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_description: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_picture: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_pos_x: # Field №7
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
  has_field_pos_y: # Field №8
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000001) != 0)
types:
  array_of__expedition_open_condition__length_s:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_s
      - id: data
        type: expedition_open_condition
        repeat: expr
        repeat-expr: length.value
  expedition_open_condition:
    seq:
      - id: bit_field
        type: aux_types::length_prefixed_bitfield
      - id: type
        type: enum__expedition_open_cond_type
        if: has_field_type
      - id: para
        type: aux_types::vlq_base128_le_u
        if: has_field_para
    instances:
      has_field_type: # Field №0
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
      has_field_para: # Field №1
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  array_of__expedition_reward__length_s:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_s
      - id: data
        type: expedition_reward
        repeat: expr
        repeat-expr: length.value
  expedition_reward:
    seq:
      - id: bit_field
        type: aux_types::length_prefixed_bitfield
      - id: htime
        type: aux_types::vlq_base128_le_u
        if: has_field_htime
      - id: reward_drop_id
        type: aux_types::vlq_base128_le_u
        if: has_field_reward_drop_id
      - id: reward_preview
        type: aux_types::vlq_base128_le_u
        if: has_field_reward_preview
    instances:
      has_field_htime: # Field №0
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
      has_field_reward_drop_id: # Field №1
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
      has_field_reward_preview: # Field №2
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
