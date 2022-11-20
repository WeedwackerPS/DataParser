meta:
  id: array_of__disp__config_ability_action__length_u
  endian: le
  license: GPLv2
  imports:
    - disp__config_ability_action
    - ../../../../aux_types
seq:
  - id: length
    type: aux_types::vlq_base128_le_u
  - id: data
    type: disp__config_ability_action
    repeat: expr
    repeat-expr: length.value
