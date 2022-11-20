meta:
  id: config_attack_info
  endian: le
  license: GPLv2
  imports:
    - ../../aux_types
    - ../../EnumType/enum__can_be_modified_by
    - ../../EnumType/enum__element_type
    - ../../EnumType/enum__attack_type
    - ../../EnumType/enum__strike_type
    - ../../EnumType/enum__hit_level
    - ../../EnumType/enum__retreat_type
    - config_camera_shake
seq:
  - id: bit_field
    type: aux_types::vlq_base128_le_u
  - id: attack_tag
    type: aux_types::string
    if: has_field_attack_tag
  - id: attenuation_tag
    type: aux_types::string
    if: has_field_attenuation_tag
  - id: attenuation_group
    type: aux_types::string
    if: has_field_attenuation_group
  - id: attack_property
    type: config_attack_property
    if: has_field_attack_property
  - id: hit_pattern
    type: config_hit_pattern
    if: has_field_hit_pattern
  - id: can_hit_head
    type: u1
    if: has_field_can_hit_head
  - id: hit_head_pattern
    type: config_hit_pattern
    if: has_field_hit_head_pattern
  - id: force_camera_shake
    type: u1
    if: has_field_force_camera_shake
  - id: camera_shake
    type: config_camera_shake
    if: has_field_camera_shake
  - id: bullet_wane
    type: config_bullet_wane
    if: has_field_bullet_wane
  - id: can_be_modified_by
    type: enum__can_be_modified_by
    if: has_field_can_be_modified_by
instances:
  has_field_attack_tag: # Field №0
    value: (bit_field.value & 0b00000000001) != 0
  has_field_attenuation_tag: # Field №1
    value: (bit_field.value & 0b00000000010) != 0
  has_field_attenuation_group: # Field №2
    value: (bit_field.value & 0b00000000100) != 0
  has_field_attack_property: # Field №3
    value: (bit_field.value & 0b00000001000) != 0
  has_field_hit_pattern: # Field №4
    value: (bit_field.value & 0b00000010000) != 0
  has_field_can_hit_head: # Field №5
    value: (bit_field.value & 0b00000100000) != 0
  has_field_hit_head_pattern: # Field №6
    value: (bit_field.value & 0b00001000000) != 0
  has_field_force_camera_shake: # Field №7
    value: (bit_field.value & 0b00010000000) != 0
  has_field_camera_shake: # Field №8
    value: (bit_field.value & 0b00100000000) != 0
  has_field_bullet_wane: # Field №9
    value: (bit_field.value & 0b01000000000) != 0
  has_field_can_be_modified_by: # Field №10
    value: (bit_field.value & 0b10000000000) != 0
types:
  config_attack_property:
    seq:
      - id: bit_field
        type: aux_types::vlq_base128_le_u
      - id: damage_percentage
        type: aux_types::dynamic_float
        if: has_field_damage_percentage
      - id: damage_percentage_ratio
        type: aux_types::dynamic_float
        if: has_field_damage_percentage_ratio
      - id: element_type
        type: enum__element_type
        if: has_field_element_type
      - id: element_rank
        type: f4
        if: has_field_element_rank
      - id: element_durability
        type: aux_types::dynamic_float
        if: has_field_element_durability
      - id: override_by_weapon
        type: u1
        if: has_field_override_by_weapon
      - id: ignore_attacker_property
        type: u1
        if: has_field_ignore_attacker_property
      - id: strike_type
        type: enum__strike_type
        if: has_field_strike_type
      - id: en_break
        type: f4
        if: has_field_en_break
      - id: en_head_break
        type: f4
        if: has_field_en_head_break
      - id: attack_type
        type: enum__attack_type
        if: has_field_attack_type
      - id: damage_extra
        type: aux_types::dynamic_float
        if: has_field_damage_extra
      - id: bonus_critical
        type: aux_types::dynamic_float
        if: has_field_bonus_critical
      - id: bonus_critical_hurt
        type: aux_types::dynamic_float
        if: has_field_bonus_critical_hurt
      - id: ignore_level_diff
        type: u1
        if: has_field_ignore_level_diff
      - id: true_damage
        type: u1
        if: has_field_true_damage
      - id: ignore_modify_damage
        type: u1
        if: has_field_ignore_modify_damage
    instances:
      has_field_damage_percentage: # Field №0
        value: (bit_field.value & 0b00000000000000001) != 0
      has_field_damage_percentage_ratio: # Field №1
        value: (bit_field.value & 0b00000000000000010) != 0
      has_field_element_type: # Field №2
        value: (bit_field.value & 0b00000000000000100) != 0
      has_field_element_rank: # Field №3
        value: (bit_field.value & 0b00000000000001000) != 0
      has_field_element_durability: # Field №4
        value: (bit_field.value & 0b00000000000010000) != 0
      has_field_override_by_weapon: # Field №5
        value: (bit_field.value & 0b00000000000100000) != 0
      has_field_ignore_attacker_property: # Field №6
        value: (bit_field.value & 0b00000000001000000) != 0
      has_field_strike_type: # Field №7
        value: (bit_field.value & 0b00000000010000000) != 0
      has_field_en_break: # Field №8
        value: (bit_field.value & 0b00000000100000000) != 0
      has_field_en_head_break: # Field №9
        value: (bit_field.value & 0b00000001000000000) != 0
      has_field_attack_type: # Field №10
        value: (bit_field.value & 0b00000010000000000) != 0
      has_field_damage_extra: # Field №11
        value: (bit_field.value & 0b00000100000000000) != 0
      has_field_bonus_critical: # Field №12
        value: (bit_field.value & 0b00001000000000000) != 0
      has_field_bonus_critical_hurt: # Field №13
        value: (bit_field.value & 0b00010000000000000) != 0
      has_field_ignore_level_diff: # Field №14
        value: (bit_field.value & 0b00100000000000000) != 0
      has_field_true_damage: # Field №15
        value: (bit_field.value & 0b01000000000000000) != 0
      has_field_ignore_modify_damage: # Field №16
        value: (bit_field.value & 0b10000000000000000) != 0
  config_hit_pattern:
    seq:
      - id: bit_field
        type: aux_types::vlq_base128_le_u
      - id: on_hit_effect_name
        type: aux_types::string
        if: has_field_on_hit_effect_name
      - id: hit_level
        type: enum__hit_level
        if: has_field_hit_level
      - id: hit_impulse_x
        type: aux_types::dynamic_float
        if: has_field_hit_impulse_x
      - id: hit_impulse_y
        type: aux_types::dynamic_float
        if: has_field_hit_impulse_y
      - id: hit_impulse_type
        type: aux_types::string
        if: has_field_hit_impulse_type
      - id: override_hit_impulse
        type: config_hit_impulse
        if: has_field_override_hit_impulse
      - id: retreat_type
        type: enum__retreat_type
        if: has_field_retreat_type
      - id: hit_halt_time
        type: f4
        if: has_field_hit_halt_time
      - id: hit_halt_time_scale
        type: f4
        if: has_field_hit_halt_time_scale
      - id: can_be_defence_halt
        type: u1
        if: has_field_can_be_defence_halt
      - id: mute_hit_text
        type: u1
        if: has_field_mute_hit_text
      - id: recurring
        type: u1
        if: has_field_recurring
      - id: force_retreat
        type: u1
        if: has_field_force_retreat
    instances:
      has_field_on_hit_effect_name: # Field №0
        value: (bit_field.value & 0b0000000000001) != 0
      has_field_hit_level: # Field №1
        value: (bit_field.value & 0b0000000000010) != 0
      has_field_hit_impulse_x: # Field №2
        value: (bit_field.value & 0b0000000000100) != 0
      has_field_hit_impulse_y: # Field №3
        value: (bit_field.value & 0b0000000001000) != 0
      has_field_hit_impulse_type: # Field №4
        value: (bit_field.value & 0b0000000010000) != 0
      has_field_override_hit_impulse: # Field №5
        value: (bit_field.value & 0b0000000100000) != 0
      has_field_retreat_type: # Field №6
        value: (bit_field.value & 0b0000001000000) != 0
      has_field_hit_halt_time: # Field №7
        value: (bit_field.value & 0b0000010000000) != 0
      has_field_hit_halt_time_scale: # Field №8
        value: (bit_field.value & 0b0000100000000) != 0
      has_field_can_be_defence_halt: # Field №9
        value: (bit_field.value & 0b0001000000000) != 0
      has_field_mute_hit_text: # Field №10
        value: (bit_field.value & 0b0010000000000) != 0
      has_field_recurring: # Field №11
        value: (bit_field.value & 0b0100000000000) != 0
      has_field_force_retreat: # Field №12
        value: (bit_field.value & 0b1000000000000) != 0
  config_bullet_wane:
    seq:
      - id: bit_field
        type: aux_types::vlq_base128_le_u
      - id: wane_delay
        type: f4
        if: has_field_wane_delay
      - id: damage_wane_interval
        type: f4
        if: has_field_damage_wane_interval
      - id: damage_wane_ratio
        type: f4
        if: has_field_damage_wane_ratio
      - id: damage_wane_min_ratio
        type: f4
        if: has_field_damage_wane_min_ratio
      - id: element_durability_wane_interval
        type: f4
        if: has_field_element_durability_wane_interval
      - id: element_durability_wane_ratio
        type: f4
        if: has_field_element_durability_wane_ratio
      - id: element_durability_wane_min_ratio
        type: f4
        if: has_field_element_durability_wane_min_ratio
      - id: hit_level_wane_interval
        type: f4
        if: has_field_hit_level_wane_interval
      - id: hit_level_wane_min
        type: enum__hit_level
        if: has_field_hit_level_wane_min
    instances:
      has_field_wane_delay: # Field №0
        value: (bit_field.value & 0b000000001) != 0
      has_field_damage_wane_interval: # Field №1
        value: (bit_field.value & 0b000000010) != 0
      has_field_damage_wane_ratio: # Field №2
        value: (bit_field.value & 0b000000100) != 0
      has_field_damage_wane_min_ratio: # Field №3
        value: (bit_field.value & 0b000001000) != 0
      has_field_element_durability_wane_interval: # Field №4
        value: (bit_field.value & 0b000010000) != 0
      has_field_element_durability_wane_ratio: # Field №5
        value: (bit_field.value & 0b000100000) != 0
      has_field_element_durability_wane_min_ratio: # Field №6
        value: (bit_field.value & 0b001000000) != 0
      has_field_hit_level_wane_interval: # Field №7
        value: (bit_field.value & 0b010000000) != 0
      has_field_hit_level_wane_min: # Field №8
        value: (bit_field.value & 0b100000000) != 0
  config_hit_impulse:
    seq:
      - id: bit_field
        type: u1
      - id: hit_level
        type: enum__hit_level
        if: has_field_hit_level
      - id: hit_impulse_x
        type: aux_types::dynamic_float
        if: has_field_hit_impulse_x
      - id: hit_impulse_y
        type: aux_types::dynamic_float
        if: has_field_hit_impulse_y
    instances:
      has_field_hit_level: # Field №0
        value: (bit_field & 0b001) != 0
      has_field_hit_impulse_x: # Field №1
        value: (bit_field & 0b010) != 0
      has_field_hit_impulse_y: # Field №2
        value: (bit_field & 0b100) != 0
