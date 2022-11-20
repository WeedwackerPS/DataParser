meta:
  id: by_attack_not_hit_scene
  endian: le
  license: GPLv2
  imports:
    - ../relational_operation_predicate
    - ../../../../Common/Disp/disp__config_base_attack_pattern
seq:
  - id: base
    type: relational_operation_predicate
  - id: bit_field
    type: u1
  - id: attack_pattern
    type: disp__config_base_attack_pattern
    if: has_field_attack_pattern
  - id: check_water_layer
    type: u1
    if: has_field_check_water_layer
instances:
  has_field_attack_pattern: # Field №0
    value: (bit_field & 0b01) != 0
  has_field_check_water_layer: # Field №1
    value: (bit_field & 0b10) != 0
  # Base class fields
  logic:
    value: base.logic
  target:
    value: base.target
