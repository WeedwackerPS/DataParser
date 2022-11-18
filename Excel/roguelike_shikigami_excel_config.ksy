meta:
  id: roguelike_shikigami_excel_config
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
    - ../EnumType/enum__roguelike_shikigami_unlock_type
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: sequence_id
    type: aux_types::vlq_base128_le_u
    if: has_field_sequence_id
  - id: group_id
    type: aux_types::vlq_base128_le_u
    if: has_field_group_id
  - id: level
    type: aux_types::vlq_base128_le_u
    if: has_field_level
  - id: unlock_cond
    type: array_of__roguelike_shikigami_unlock_config__length_s
    if: has_field_unlock_cond
  - id: cost_item_id
    type: aux_types::vlq_base128_le_u
    if: has_field_cost_item_id
  - id: cost_item_count
    type: aux_types::vlq_base128_le_u
    if: has_field_cost_item_count
  - id: shiki_skill_name
    type: aux_types::vlq_base128_le_u
    if: has_field_shiki_skill_name
  - id: shiki_skill_desc
    type: aux_types::vlq_base128_le_u
    if: has_field_shiki_skill_desc
instances:
  has_field_sequence_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_group_id: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_level: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_unlock_cond: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_cost_item_id: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_cost_item_count: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_shiki_skill_name: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_shiki_skill_desc: # Field №7
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
types:
  array_of__roguelike_shikigami_unlock_config__length_s:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_s
      - id: data
        type: roguelike_shikigami_unlock_config
        repeat: expr
        repeat-expr: length.value
  roguelike_shikigami_unlock_config:
    seq:
      - id: bit_field
        type: aux_types::length_prefixed_bitfield
      - id: type
        type: enum__roguelike_shikigami_unlock_type
        if: has_field_type
      - id: param
        type: aux_types::string
        if: has_field_param
    instances:
      has_field_type: # Field №0
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
      has_field_param: # Field №1
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
