meta:
  id: array_of__sign_in_cond_config__length_s
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../../aux_types
    - sign_in_cond_config
seq:
  - id: length
    type: aux_types::vlq_base128_le_s
  - id: data
    type: sign_in_cond_config
    repeat: expr
    repeat-expr: length.value