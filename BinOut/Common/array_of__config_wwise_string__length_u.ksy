meta:
  id: array_of__config_wwise_string__length_u
  endian: le
  license: GPLv2
  imports:
    - ../../aux_types
    - config_wwise_string
seq:
  - id: length
    type: aux_types::vlq_base128_le_u
  - id: data
    type: config_wwise_string
    repeat: expr
    repeat-expr: length.value
