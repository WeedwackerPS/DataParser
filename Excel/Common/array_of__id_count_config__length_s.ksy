meta:
  id: array_of__id_count_config__length_s
  endian: le
  license: GPLv2
  imports:
    - ../../aux_types
    - id_count_config
seq:
  - id: length
    type: aux_types::vlq_base128_le_s
  - id: data
    type: id_count_config
    repeat: expr
    repeat-expr: length.value
