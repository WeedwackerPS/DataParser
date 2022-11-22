meta:
  id: config_td_play
  endian: le
  license: GPLv2
  imports:
    - ../../aux_types
    - ../../EnumType/enum__td_play_tower_type
seq:
  - id: bit_field
    type: u1
  - id: attack_speed_c
    type: f4
    if: has_field_attack_speed_c
  - id: tower_datas
    type: dict_of__enum__td_play_tower_type_config_td_play_tower_data
    if: has_field_tower_datas
instances:
  has_field_attack_speed_c: # Field №0
    value: (bit_field & 0b01) != 0
  has_field_tower_datas: # Field №1
    value: (bit_field & 0b10) != 0
types:
  dict_of__enum__td_play_tower_type_config_td_play_tower_data:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: items
        type: kvp_of_enum__td_play_tower_type_config_td_play_tower_data
        repeat: expr
        repeat-expr: length.value
  kvp_of_enum__td_play_tower_type_config_td_play_tower_data:
    seq:
      - id: key
        type: enum__td_play_tower_type
      - id: value
        type: config_td_play_tower_data
  config_td_play_tower_data:
    seq:
      - id: bit_field
        type: aux_types::vlq_base128_le_u
      - id: tower_type
        type: enum__td_play_tower_type
        if: has_field_tower_type
      - id: damage_per_level
        type: f4
        if: has_field_damage_per_level
      - id: elem_mastery_per_level
        type: f4
        if: has_field_elem_mastery_per_level
      - id: elem_mastery_per_per_stack
        type: f4
        if: has_field_elem_mastery_per_per_stack
      - id: damage_a_per_stack
        type: f4
        if: has_field_damage_a_per_stack
      - id: damage_b_per_stack
        type: f4
        if: has_field_damage_b_per_stack
      - id: attack_speed_a
        type: f4
        if: has_field_attack_speed_a
      - id: attack_speed_b
        type: f4
        if: has_field_attack_speed_b
      - id: attack_range_a
        type: f4
        if: has_field_attack_range_a
      - id: attack_range_b
        type: f4
        if: has_field_attack_range_b
    instances:
      has_field_tower_type: # Field №0
        value: (bit_field.value & 0b0000000001) != 0
      has_field_damage_per_level: # Field №1
        value: (bit_field.value & 0b0000000010) != 0
      has_field_elem_mastery_per_level: # Field №2
        value: (bit_field.value & 0b0000000100) != 0
      has_field_elem_mastery_per_per_stack: # Field №3
        value: (bit_field.value & 0b0000001000) != 0
      has_field_damage_a_per_stack: # Field №4
        value: (bit_field.value & 0b0000010000) != 0
      has_field_damage_b_per_stack: # Field №5
        value: (bit_field.value & 0b0000100000) != 0
      has_field_attack_speed_a: # Field №6
        value: (bit_field.value & 0b0001000000) != 0
      has_field_attack_speed_b: # Field №7
        value: (bit_field.value & 0b0010000000) != 0
      has_field_attack_range_a: # Field №8
        value: (bit_field.value & 0b0100000000) != 0
      has_field_attack_range_b: # Field №9
        value: (bit_field.value & 0b1000000000) != 0
