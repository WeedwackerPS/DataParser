meta:
  id: config_custom_attack_shape
  endian: le
  license: GPLv2
seq:
  - id: bit_field
    type: u1
  - id: sphere
    type: config_custom_attack_sphere
    if: has_field_sphere
  - id: box
    type: config_custom_attack_box
    if: has_field_box
  - id: circle
    type: config_custom_attack_circle
    if: has_field_circle
instances:
  has_field_sphere: # Field №0
    value: (bit_field & 0b001) != 0
  has_field_box: # Field №1
    value: (bit_field & 0b010) != 0
  has_field_circle: # Field №2
    value: (bit_field & 0b100) != 0
types:
  config_custom_attack_box:
    seq:
      - id: bit_field
        type: u1
      - id: custom_attack_box_size_x
        type: f4
        if: has_field_custom_attack_box_size_x
      - id: custom_attack_box_size_y
        type: f4
        if: has_field_custom_attack_box_size_y
      - id: custom_attack_box_size_z
        type: f4
        if: has_field_custom_attack_box_size_z
    instances:
      has_field_custom_attack_box_size_x: # Field №0
        value: (bit_field & 0b001) != 0
      has_field_custom_attack_box_size_y: # Field №1
        value: (bit_field & 0b010) != 0
      has_field_custom_attack_box_size_z: # Field №2
        value: (bit_field & 0b100) != 0
  config_custom_attack_circle:
    seq:
      - id: bit_field
        type: u1
      - id: custom_attack_circle_radius
        type: f4
        if: has_field_custom_attack_circle_radius
      - id: custom_attack_circle_inner_radius
        type: f4
        if: has_field_custom_attack_circle_inner_radius
    instances:
      has_field_custom_attack_circle_radius: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_custom_attack_circle_inner_radius: # Field №1
        value: (bit_field & 0b10) != 0
  config_custom_attack_sphere:
    seq:
      - id: bit_field
        type: u1
      - id: custom_attack_sphere_radius
        type: f4
        if: has_field_custom_attack_sphere_radius
    instances:
      has_field_custom_attack_sphere_radius: # Field №0
        value: (bit_field & 0b1) != 0
