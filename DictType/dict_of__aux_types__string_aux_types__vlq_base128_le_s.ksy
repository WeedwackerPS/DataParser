meta:
  id: dict_of__aux_types__string_aux_types__vlq_base128_le_s
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
seq:
  - id: length
    type: aux_types::vlq_base128_le_u
  - id: items
    type: kvp_of_aux_types__string_aux_types__vlq_base128_le_s
    repeat: expr
    repeat-expr: length.value
types:
  kvp_of_aux_types__string_aux_types__vlq_base128_le_s:
    seq:
      - id: key
        type: aux_types::string
      - id: value
        type: aux_types::vlq_base128_le_s