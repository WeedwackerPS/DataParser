meta:
  id: array_of__fight_prop_grow_config__length_s
  endian: le
  license: GPLv2
  imports:
    - ../../aux_types
    - fight_prop_grow_config
seq:
  - id: length
    type: aux_types::vlq_base128_le_s
  - id: data
    type: fight_prop_grow_config
    repeat: expr
    repeat-expr: length.value
