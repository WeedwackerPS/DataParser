meta:
  id: steer_attack_move_mixin
  endian: le
  license: GPLv2
  imports:
    - ../steer_attack_mixin
seq:
  - id: base
    type: steer_attack_mixin
instances:
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
