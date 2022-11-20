meta:
  id: widget_general_excel_config
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
    - ../ArrayType/array_of__aux_types__vlq_base128_le_u__length_u
    - ../EnumType/enum__vehicle_limit_type
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: material_id
    type: aux_types::vlq_base128_le_u
    if: has_field_material_id
  - id: can_use_in_other_world
    type: u1
    if: has_field_can_use_in_other_world
  - id: can_use_in_room
    type: u1
    if: has_field_can_use_in_room
  - id: forbidden_scene_id_list
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_forbidden_scene_id_list
  - id: can_use_when_current_avatar_dead
    type: u1
    if: has_field_can_use_when_current_avatar_dead
  - id: can_use_in_limit_region
    type: u1
    if: has_field_can_use_in_limit_region
  - id: can_use_when_fight
    type: u1
    if: has_field_can_use_when_fight
  - id: can_use_in_un_normal_move_state
    type: u1
    if: has_field_can_use_in_un_normal_move_state
  - id: can_use_in_avatar_focus
    type: u1
    if: has_field_can_use_in_avatar_focus
  - id: can_use_in_dungeon
    type: u1
    if: has_field_can_use_in_dungeon
  - id: can_use_in_tower
    type: u1
    if: has_field_can_use_in_tower
  - id: can_use_in_homeworld
    type: u1
    if: has_field_can_use_in_homeworld
  - id: vehicle_limit
    type: enum__vehicle_limit_type
    if: has_field_vehicle_limit
  - id: forbidden_dungeon_type_list
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_forbidden_dungeon_type_list
  - id: forbidden_dungeon_play_type_list
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_forbidden_dungeon_play_type_list
instances:
  has_field_material_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_can_use_in_other_world: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_can_use_in_room: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_forbidden_scene_id_list: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_can_use_when_current_avatar_dead: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_can_use_in_limit_region: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_can_use_when_fight: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_can_use_in_un_normal_move_state: # Field №7
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
  has_field_can_use_in_avatar_focus: # Field №8
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000001) != 0)
  has_field_can_use_in_dungeon: # Field №9
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000010) != 0)
  has_field_can_use_in_tower: # Field №10
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000100) != 0)
  has_field_can_use_in_homeworld: # Field №11
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00001000) != 0)
  has_field_vehicle_limit: # Field №12
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00010000) != 0)
  has_field_forbidden_dungeon_type_list: # Field №13
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00100000) != 0)
  has_field_forbidden_dungeon_play_type_list: # Field №14
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b01000000) != 0)
