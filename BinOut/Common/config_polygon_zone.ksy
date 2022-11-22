meta:
  id: config_polygon_zone
  endian: le
  license: GPLv2
  imports:
    - ../../aux_types
seq:
  - id: bit_field
    type: u1
  - id: check_cd
    type: f4
    if: has_field_check_cd
instances:
  has_field_check_cd: # Field №0
    value: (bit_field & 0b1) != 0
