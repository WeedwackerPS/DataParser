meta:
  id: steer_attack_trace_to_pos_mixin
  endian: le
  license: GPL
  imports:
    - ../steer_attack_mixin
    - ../../../../../aux_types
seq:
  - id: base
    type: steer_attack_mixin
  - id: bit_field
    type: u1
  - id: global_pos_key
    type: aux_types::string
    if: has_field_global_pos_key
instances:
  has_field_global_pos_key: # Field №0
    value: (bit_field & 0b1) != 0
  # Base class fields
  steer_state_i_ds:
    value: base.steer_state_i_ds
  start_normalized_time:
    value: base.start_normalized_time
  end_normalized_time:
    value: base.end_normalized_time
  angular_speed:
    value: base.angular_speed
  attack_angle:
    value: base.attack_angle
  attack_trigger:
    value: base.attack_trigger
  attack_distance:
    value: base.attack_distance
  remote_steer_to_local_target:
    value: base.remote_steer_to_local_target
  is_unique:
    value: base.is_unique
