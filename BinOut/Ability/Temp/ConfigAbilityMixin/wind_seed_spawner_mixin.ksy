meta:
  id: wind_seed_spawner_mixin
  endian: le
  license: GPL
  imports:
    - ../config_ability_mixin
    - ../../../../aux_types
    - ../../../../ArrayType/array_of__aux_types__vlq_base128_le_u__length_u
seq:
  - id: base
    type: config_ability_mixin
  - id: bit_field
    type: aux_types::vlq_base128_le_u
  - id: refresh_enable
    type: u1
    if: has_field_refresh_enable
  - id: spawner_radius
    type: f4
    if: has_field_spawner_radius
  - id: spawner_height_angle
    type: f4
    if: has_field_spawner_height_angle
  - id: spawner_area_angle
    type: f4
    if: has_field_spawner_area_angle
  - id: min_distance_to_avatar
    type: f4
    if: has_field_min_distance_to_avatar
  - id: move_suppress_speed
    type: f4
    if: has_field_move_suppress_speed
  - id: move_refresh_angle_freeze
    type: f4
    if: has_field_move_refresh_angle_freeze
  - id: move_refresh_angle_slow
    type: f4
    if: has_field_move_refresh_angle_slow
  - id: min_num_per_spawn
    type: aux_types::vlq_base128_le_u
    if: has_field_min_num_per_spawn
  - id: max_num_per_spawn
    type: aux_types::vlq_base128_le_u
    if: has_field_max_num_per_spawn
  - id: max_swap_num_per_spawn
    type: aux_types::vlq_base128_le_u
    if: has_field_max_swap_num_per_spawn
  - id: min_separate_range
    type: f4
    if: has_field_min_separate_range
  - id: max_separate_range
    type: f4
    if: has_field_max_separate_range
  - id: remove_seed_distance
    type: f4
    if: has_field_remove_seed_distance
  - id: refresh_meter_per_meter
    type: f4
    if: has_field_refresh_meter_per_meter
  - id: refresh_meter_per_second
    type: f4
    if: has_field_refresh_meter_per_second
  - id: refresh_meter_per_dist_remove
    type: f4
    if: has_field_refresh_meter_per_dist_remove
  - id: refresh_meter_max
    type: f4
    if: has_field_refresh_meter_max
  - id: wind_force_modifier
    type: aux_types::string
    if: has_field_wind_force_modifier
  - id: wind_explode_modifier
    type: aux_types::string
    if: has_field_wind_explode_modifier
  - id: wind_bullet_ability
    type: aux_types::string
    if: has_field_wind_bullet_ability
  - id: global_value_key
    type: aux_types::string
    if: has_field_global_value_key
  - id: spawn_num_array
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_spawn_num_array
  - id: seed_gadget_id
    type: aux_types::vlq_base128_le_u
    if: has_field_seed_gadget_id
  - id: init_signal_strength
    type: f4
    if: has_field_init_signal_strength
  - id: trigger_signal_strength
    type: f4
    if: has_field_trigger_signal_strength
  - id: signal_decay_speed
    type: f4
    if: has_field_signal_decay_speed
  - id: mutiple_range
    type: f4
    if: has_field_mutiple_range
  - id: catch_seed_range
    type: f4
    if: has_field_catch_seed_range
instances:
  has_field_refresh_enable: # Field №0
    value: (bit_field.value & 0b00000000000000000000000000001) != 0
  has_field_spawner_radius: # Field №1
    value: (bit_field.value & 0b00000000000000000000000000010) != 0
  has_field_spawner_height_angle: # Field №2
    value: (bit_field.value & 0b00000000000000000000000000100) != 0
  has_field_spawner_area_angle: # Field №3
    value: (bit_field.value & 0b00000000000000000000000001000) != 0
  has_field_min_distance_to_avatar: # Field №4
    value: (bit_field.value & 0b00000000000000000000000010000) != 0
  has_field_move_suppress_speed: # Field №5
    value: (bit_field.value & 0b00000000000000000000000100000) != 0
  has_field_move_refresh_angle_freeze: # Field №6
    value: (bit_field.value & 0b00000000000000000000001000000) != 0
  has_field_move_refresh_angle_slow: # Field №7
    value: (bit_field.value & 0b00000000000000000000010000000) != 0
  has_field_min_num_per_spawn: # Field №8
    value: (bit_field.value & 0b00000000000000000000100000000) != 0
  has_field_max_num_per_spawn: # Field №9
    value: (bit_field.value & 0b00000000000000000001000000000) != 0
  has_field_max_swap_num_per_spawn: # Field №10
    value: (bit_field.value & 0b00000000000000000010000000000) != 0
  has_field_min_separate_range: # Field №11
    value: (bit_field.value & 0b00000000000000000100000000000) != 0
  has_field_max_separate_range: # Field №12
    value: (bit_field.value & 0b00000000000000001000000000000) != 0
  has_field_remove_seed_distance: # Field №13
    value: (bit_field.value & 0b00000000000000010000000000000) != 0
  has_field_refresh_meter_per_meter: # Field №14
    value: (bit_field.value & 0b00000000000000100000000000000) != 0
  has_field_refresh_meter_per_second: # Field №15
    value: (bit_field.value & 0b00000000000001000000000000000) != 0
  has_field_refresh_meter_per_dist_remove: # Field №16
    value: (bit_field.value & 0b00000000000010000000000000000) != 0
  has_field_refresh_meter_max: # Field №17
    value: (bit_field.value & 0b00000000000100000000000000000) != 0
  has_field_wind_force_modifier: # Field №18
    value: (bit_field.value & 0b00000000001000000000000000000) != 0
  has_field_wind_explode_modifier: # Field №19
    value: (bit_field.value & 0b00000000010000000000000000000) != 0
  has_field_wind_bullet_ability: # Field №20
    value: (bit_field.value & 0b00000000100000000000000000000) != 0
  has_field_global_value_key: # Field №21
    value: (bit_field.value & 0b00000001000000000000000000000) != 0
  has_field_spawn_num_array: # Field №22
    value: (bit_field.value & 0b00000010000000000000000000000) != 0
  has_field_seed_gadget_id: # Field №23
    value: (bit_field.value & 0b00000100000000000000000000000) != 0
  has_field_init_signal_strength: # Field №24
    value: (bit_field.value & 0b00001000000000000000000000000) != 0
  has_field_trigger_signal_strength: # Field №25
    value: (bit_field.value & 0b00010000000000000000000000000) != 0
  has_field_signal_decay_speed: # Field №26
    value: (bit_field.value & 0b00100000000000000000000000000) != 0
  has_field_mutiple_range: # Field №27
    value: (bit_field.value & 0b01000000000000000000000000000) != 0
  has_field_catch_seed_range: # Field №28
    value: (bit_field.value & 0b10000000000000000000000000000) != 0
  # Base class fields
  is_unique:
    value: base.is_unique
