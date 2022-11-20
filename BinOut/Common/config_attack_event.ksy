meta:
  id: config_attack_event
  endian: le
  license: GPLv2
  imports:
    - Disp/disp__config_base_attack_pattern
    - config_attack_info
seq:
  - id: bit_field
    type: u1
  - id: attack_pattern
    type: disp__config_base_attack_pattern
    if: has_field_attack_pattern
  - id: attack_info
    type: config_attack_info
    if: has_field_attack_info
instances:
  has_field_attack_pattern: # Field №0
    value: (bit_field & 0b01) != 0
  has_field_attack_info: # Field №1
    value: (bit_field & 0b10) != 0
