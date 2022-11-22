meta:
  id: config_combat_property
  endian: le
  license: GPLv2
  imports:
    - ../../../aux_types
    - ../../../EnumType/enum__endure_type
    - ../../../EnumType/enum__level_option
    - ../../../EnumType/enum__combat_property_index
seq:
  - id: bit_field
    type: aux_types::vlq_base128_le_u
  - id: endure_type
    type: enum__endure_type
    if: has_field_endure_type
  - id: use_creator_property
    type: u1
    if: has_field_use_creator_property
  - id: use_creator_property_partly
    type: array_of__enum__combat_property_index__length_u
    if: has_field_use_creator_property_partly
  - id: use_creator_buffed_property
    type: u1
    if: has_field_use_creator_buffed_property
  - id: use_ability_property
    type: u1
    if: has_field_use_ability_property
  - id: hp
    type: f4
    if: has_field_hp
  - id: attack
    type: f4
    if: has_field_attack
  - id: defense
    type: f4
    if: has_field_defense
  - id: level
    type: aux_types::vlq_base128_le_s
    if: has_field_level
  - id: level_option
    type: enum__level_option
    if: has_field_level_option
  - id: weight
    type: f4
    if: has_field_weight
  - id: endure_shake
    type: f4
    if: has_field_endure_shake
  - id: is_invincible
    type: u1
    if: has_field_is_invincible
  - id: is_lock_hp
    type: u1
    if: has_field_is_lock_hp
  - id: is_lock_hp_no_heal
    type: u1
    if: has_field_is_lock_hp_no_heal
  - id: is_no_heal
    type: u1
    if: has_field_is_no_heal
  - id: is_ghost_to_allied
    type: u1
    if: has_field_is_ghost_to_allied
  - id: is_ghost_to_enemy
    type: u1
    if: has_field_is_ghost_to_enemy
  - id: can_trigger_bullet
    type: u1
    if: has_field_can_trigger_bullet
  - id: deny_element_stick
    type: u1
    if: has_field_deny_element_stick
  - id: ignore_purge_rate
    type: u1
    if: has_field_ignore_purge_rate
  - id: ignore_damage_to_self
    type: u1
    if: has_field_ignore_damage_to_self
instances:
  has_field_endure_type: # Field №0
    value: (bit_field.value & 0b0000000000000000000001) != 0
  has_field_use_creator_property: # Field №1
    value: (bit_field.value & 0b0000000000000000000010) != 0
  has_field_use_creator_property_partly: # Field №2
    value: (bit_field.value & 0b0000000000000000000100) != 0
  has_field_use_creator_buffed_property: # Field №3
    value: (bit_field.value & 0b0000000000000000001000) != 0
  has_field_use_ability_property: # Field №4
    value: (bit_field.value & 0b0000000000000000010000) != 0
  has_field_hp: # Field №5
    value: (bit_field.value & 0b0000000000000000100000) != 0
  has_field_attack: # Field №6
    value: (bit_field.value & 0b0000000000000001000000) != 0
  has_field_defense: # Field №7
    value: (bit_field.value & 0b0000000000000010000000) != 0
  has_field_level: # Field №8
    value: (bit_field.value & 0b0000000000000100000000) != 0
  has_field_level_option: # Field №9
    value: (bit_field.value & 0b0000000000001000000000) != 0
  has_field_weight: # Field №10
    value: (bit_field.value & 0b0000000000010000000000) != 0
  has_field_endure_shake: # Field №11
    value: (bit_field.value & 0b0000000000100000000000) != 0
  has_field_is_invincible: # Field №12
    value: (bit_field.value & 0b0000000001000000000000) != 0
  has_field_is_lock_hp: # Field №13
    value: (bit_field.value & 0b0000000010000000000000) != 0
  has_field_is_lock_hp_no_heal: # Field №14
    value: (bit_field.value & 0b0000000100000000000000) != 0
  has_field_is_no_heal: # Field №15
    value: (bit_field.value & 0b0000001000000000000000) != 0
  has_field_is_ghost_to_allied: # Field №16
    value: (bit_field.value & 0b0000010000000000000000) != 0
  has_field_is_ghost_to_enemy: # Field №17
    value: (bit_field.value & 0b0000100000000000000000) != 0
  has_field_can_trigger_bullet: # Field №18
    value: (bit_field.value & 0b0001000000000000000000) != 0
  has_field_deny_element_stick: # Field №19
    value: (bit_field.value & 0b0010000000000000000000) != 0
  has_field_ignore_purge_rate: # Field №20
    value: (bit_field.value & 0b0100000000000000000000) != 0
  has_field_ignore_damage_to_self: # Field №21
    value: (bit_field.value & 0b1000000000000000000000) != 0
types:
  array_of__enum__combat_property_index__length_u:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: data
        type: enum__combat_property_index
        repeat: expr
        repeat-expr: length.value
