meta:
  id: array_of__config_ability_state_to_actions__length_u
  endian: le
  license: GPL
  imports:
    - ../../../../../aux_types
    - config_ability_state_to_actions
seq:
  - id: length
    type: aux_types::vlq_base128_le_u
  - id: data
    type: config_ability_state_to_actions
    repeat: expr
    repeat-expr: length.value
