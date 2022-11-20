meta:
  id: attach_light
  endian: le
  license: GPLv2
  imports:
    - ../config_ability_action
    - ../../../../aux_types
seq:
  - id: base
    type: config_ability_action
  - id: bit_field
    type: u1
  - id: attach
    type: config_light_attach
    if: has_field_attach
  - id: light
    type: config_light_component
    if: has_field_light
instances:
  has_field_attach: # Field №0
    value: (bit_field & 0b01) != 0
  has_field_light: # Field №1
    value: (bit_field & 0b10) != 0
  # Base class fields
  token:
    value: base.token
  target:
    value: base.target
  other_targets:
    value: base.other_targets
  do_off_stage:
    value: base.do_off_stage
  do_after_die:
    value: base.do_after_die
  can_be_handled_on_recover:
    value: base.can_be_handled_on_recover
  mute_remote_action:
    value: base.mute_remote_action
  predicates:
    value: base.predicates
  predicates_foreach:
    value: base.predicates_foreach
types:
  config_light_attach:
    seq:
      - id: bit_field
        type: u1
      - id: attach_point
        type: aux_types::string
        if: has_field_attach_point
      - id: local_pos_x
        type: f4
        if: has_field_local_pos_x
      - id: local_pos_y
        type: f4
        if: has_field_local_pos_y
      - id: local_pos_z
        type: f4
        if: has_field_local_pos_z
      - id: local_rot_x
        type: f4
        if: has_field_local_rot_x
      - id: local_rot_y
        type: f4
        if: has_field_local_rot_y
      - id: local_rot_z
        type: f4
        if: has_field_local_rot_z
      - id: local_rot_w
        type: f4
        if: has_field_local_rot_w
    instances:
      has_field_attach_point: # Field №0
        value: (bit_field & 0b00000001) != 0
      has_field_local_pos_x: # Field №1
        value: (bit_field & 0b00000010) != 0
      has_field_local_pos_y: # Field №2
        value: (bit_field & 0b00000100) != 0
      has_field_local_pos_z: # Field №3
        value: (bit_field & 0b00001000) != 0
      has_field_local_rot_x: # Field №4
        value: (bit_field & 0b00010000) != 0
      has_field_local_rot_y: # Field №5
        value: (bit_field & 0b00100000) != 0
      has_field_local_rot_z: # Field №6
        value: (bit_field & 0b01000000) != 0
      has_field_local_rot_w: # Field №7
        value: (bit_field & 0b10000000) != 0
  config_light_component:
    seq:
      - id: bit_field
        type: u1
      - id: light_type
        type: aux_types::string
        if: has_field_light_type
      - id: range
        type: f4
        if: has_field_range
      - id: color_r
        type: f4
        if: has_field_color_r
      - id: color_g
        type: f4
        if: has_field_color_g
      - id: color_b
        type: f4
        if: has_field_color_b
      - id: angle
        type: f4
        if: has_field_angle
      - id: intensity
        type: f4
        if: has_field_intensity
      - id: indirect_mult
        type: f4
        if: has_field_indirect_mult
    instances:
      has_field_light_type: # Field №0
        value: (bit_field & 0b00000001) != 0
      has_field_range: # Field №1
        value: (bit_field & 0b00000010) != 0
      has_field_color_r: # Field №2
        value: (bit_field & 0b00000100) != 0
      has_field_color_g: # Field №3
        value: (bit_field & 0b00001000) != 0
      has_field_color_b: # Field №4
        value: (bit_field & 0b00010000) != 0
      has_field_angle: # Field №5
        value: (bit_field & 0b00100000) != 0
      has_field_intensity: # Field №6
        value: (bit_field & 0b01000000) != 0
      has_field_indirect_mult: # Field №7
        value: (bit_field & 0b10000000) != 0
