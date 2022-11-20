meta:
  id: activity_sumo_stage_excel_config
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
  - id: scheduld_id
    type: aux_types::vlq_base128_le_u
    if: has_field_scheduld_id
  - id: open_day
    type: aux_types::vlq_base128_le_u
    if: has_field_open_day
  - id: dungeon_id
    type: aux_types::vlq_base128_le_u
    if: has_field_dungeon_id
  - id: watcher_list
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_watcher_list
  - id: trial_avatar_pool
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_trial_avatar_pool
  - id: skill_pool
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_skill_pool
  - id: gallery_id
    type: aux_types::vlq_base128_le_u
    if: has_field_gallery_id
  - id: title
    type: aux_types::vlq_base128_le_u
    if: has_field_title
  - id: desc
    type: aux_types::vlq_base128_le_u
    if: has_field_desc
  - id: score_ranks
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_score_ranks
  - id: monster_preview_vec
    type: array_of__activity_sumo_monster_preview__length_s
    if: has_field_monster_preview_vec
instances:
  has_field_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_scheduld_id: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_open_day: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_dungeon_id: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_watcher_list: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_trial_avatar_pool: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_skill_pool: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_gallery_id: # Field №7
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
  has_field_title: # Field №8
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000001) != 0)
  has_field_desc: # Field №9
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000010) != 0)
  has_field_score_ranks: # Field №10
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000100) != 0)
  has_field_monster_preview_vec: # Field №11
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00001000) != 0)
types:
  array_of__activity_sumo_monster_preview__length_s:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_s
      - id: data
        type: activity_sumo_monster_preview
        repeat: expr
        repeat-expr: length.value
  activity_sumo_monster_preview:
    seq:
      - id: bit_field
        type: aux_types::length_prefixed_bitfield
      - id: boss
        type: aux_types::string
        if: has_field_boss
      - id: normal
        type: aux_types::string
        if: has_field_normal
    instances:
      has_field_boss: # Field №0
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
      has_field_normal: # Field №1
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)