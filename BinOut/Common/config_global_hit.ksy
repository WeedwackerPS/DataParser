meta:
  id: config_global_hit
  endian: le
  license: GPLv2
  imports:
    - ../../aux_types
seq:
  - id: bit_field
    type: aux_types::vlq_base128_le_u
  - id: min_hit_vx
    type: f4
    if: has_field_min_hit_vx
  - id: max_hit_vx
    type: f4
    if: has_field_max_hit_vx
  - id: min_hit_vy
    type: f4
    if: has_field_min_hit_vy
  - id: max_hit_vy
    type: f4
    if: has_field_max_hit_vy
  - id: gravity
    type: f4
    if: has_field_gravity
  - id: hit_retreat_friction
    type: f4
    if: has_field_hit_retreat_friction
  - id: air_friction_x
    type: f4
    if: has_field_air_friction_x
  - id: air_friction_y
    type: f4
    if: has_field_air_friction_y
  - id: die_retreat_ratio
    type: f4
    if: has_field_die_retreat_ratio
  - id: die_retreat_light_ratio
    type: f4
    if: has_field_die_retreat_light_ratio
  - id: die_retreat_heavy_ratio
    type: f4
    if: has_field_die_retreat_heavy_ratio
  - id: die_retreat_add
    type: f4
    if: has_field_die_retreat_add
  - id: die_retreat_heavy_add
    type: f4
    if: has_field_die_retreat_heavy_add
  - id: die_retreat_air_x_add
    type: f4
    if: has_field_die_retreat_air_x_add
  - id: die_retreat_air_y_add
    type: f4
    if: has_field_die_retreat_air_y_add
instances:
  has_field_min_hit_vx: # Field №0
    value: (bit_field.value & 0b000000000000001) != 0
  has_field_max_hit_vx: # Field №1
    value: (bit_field.value & 0b000000000000010) != 0
  has_field_min_hit_vy: # Field №2
    value: (bit_field.value & 0b000000000000100) != 0
  has_field_max_hit_vy: # Field №3
    value: (bit_field.value & 0b000000000001000) != 0
  has_field_gravity: # Field №4
    value: (bit_field.value & 0b000000000010000) != 0
  has_field_hit_retreat_friction: # Field №5
    value: (bit_field.value & 0b000000000100000) != 0
  has_field_air_friction_x: # Field №6
    value: (bit_field.value & 0b000000001000000) != 0
  has_field_air_friction_y: # Field №7
    value: (bit_field.value & 0b000000010000000) != 0
  has_field_die_retreat_ratio: # Field №8
    value: (bit_field.value & 0b000000100000000) != 0
  has_field_die_retreat_light_ratio: # Field №9
    value: (bit_field.value & 0b000001000000000) != 0
  has_field_die_retreat_heavy_ratio: # Field №10
    value: (bit_field.value & 0b000010000000000) != 0
  has_field_die_retreat_add: # Field №11
    value: (bit_field.value & 0b000100000000000) != 0
  has_field_die_retreat_heavy_add: # Field №12
    value: (bit_field.value & 0b001000000000000) != 0
  has_field_die_retreat_air_x_add: # Field №13
    value: (bit_field.value & 0b010000000000000) != 0
  has_field_die_retreat_air_y_add: # Field №14
    value: (bit_field.value & 0b100000000000000) != 0
