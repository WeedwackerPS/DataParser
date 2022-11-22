meta:
  id: config_trigger
  endian: le
  license: GPLv2
  imports:
    - ../../aux_types
    - ../../EnumType/enum__concern_type
    - ../../EnumType/enum__target_type
    - ../../EnumType/enum__trigger_flag
seq:
  - id: bit_field
    type: aux_types::vlq_base128_le_u
  - id: trigger_flag
    type: enum__trigger_flag
    if: has_field_trigger_flag
  - id: concern_type
    type: enum__concern_type
    if: has_field_concern_type
  - id: shape
    type: aux_types::string
    if: has_field_shape
  - id: check_infinite
    type: u1
    if: has_field_check_infinite
  - id: trigger_infinite
    type: u1
    if: has_field_trigger_infinite
  - id: life_infinite
    type: u1
    if: has_field_life_infinite
  - id: start_check_time
    type: f4
    if: has_field_start_check_time
  - id: check_interval
    type: f4
    if: has_field_check_interval
  - id: check_count
    type: aux_types::vlq_base128_le_s
    if: has_field_check_count
  - id: trigger_interval
    type: f4
    if: has_field_trigger_interval
  - id: trigger_count
    type: aux_types::vlq_base128_le_s
    if: has_field_trigger_count
  - id: life_time
    type: f4
    if: has_field_life_time
  - id: overwrite_camp_type
    type: u1
    if: has_field_overwrite_camp_type
  - id: camp_type
    type: enum__target_type
    if: has_field_camp_type
  - id: check_point
    type: u1
    if: has_field_check_point
  - id: use_surface_height
    type: u1
    if: has_field_use_surface_height
  - id: use_collider
    type: u1
    if: has_field_use_collider
  - id: collider_name
    type: aux_types::string
    if: has_field_collider_name
  - id: check_ghost
    type: u1
    if: has_field_check_ghost
  - id: collider_check_on_init
    type: u1
    if: has_field_collider_check_on_init
instances:
  has_field_trigger_flag: # Field №0
    value: (bit_field.value & 0b00000000000000000001) != 0
  has_field_concern_type: # Field №1
    value: (bit_field.value & 0b00000000000000000010) != 0
  has_field_shape: # Field №2
    value: (bit_field.value & 0b00000000000000000100) != 0
  has_field_check_infinite: # Field №3
    value: (bit_field.value & 0b00000000000000001000) != 0
  has_field_trigger_infinite: # Field №4
    value: (bit_field.value & 0b00000000000000010000) != 0
  has_field_life_infinite: # Field №5
    value: (bit_field.value & 0b00000000000000100000) != 0
  has_field_start_check_time: # Field №6
    value: (bit_field.value & 0b00000000000001000000) != 0
  has_field_check_interval: # Field №7
    value: (bit_field.value & 0b00000000000010000000) != 0
  has_field_check_count: # Field №8
    value: (bit_field.value & 0b00000000000100000000) != 0
  has_field_trigger_interval: # Field №9
    value: (bit_field.value & 0b00000000001000000000) != 0
  has_field_trigger_count: # Field №10
    value: (bit_field.value & 0b00000000010000000000) != 0
  has_field_life_time: # Field №11
    value: (bit_field.value & 0b00000000100000000000) != 0
  has_field_overwrite_camp_type: # Field №12
    value: (bit_field.value & 0b00000001000000000000) != 0
  has_field_camp_type: # Field №13
    value: (bit_field.value & 0b00000010000000000000) != 0
  has_field_check_point: # Field №14
    value: (bit_field.value & 0b00000100000000000000) != 0
  has_field_use_surface_height: # Field №15
    value: (bit_field.value & 0b00001000000000000000) != 0
  has_field_use_collider: # Field №16
    value: (bit_field.value & 0b00010000000000000000) != 0
  has_field_collider_name: # Field №17
    value: (bit_field.value & 0b00100000000000000000) != 0
  has_field_check_ghost: # Field №18
    value: (bit_field.value & 0b01000000000000000000) != 0
  has_field_collider_check_on_init: # Field №19
    value: (bit_field.value & 0b10000000000000000000) != 0
