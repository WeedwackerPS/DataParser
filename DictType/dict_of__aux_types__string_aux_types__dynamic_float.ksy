meta:
  id: dict_of__aux_types__string_aux_types__dynamic_float
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
seq:
  - id: length
    type: aux_types::vlq_base128_le_u
  - id: items
    type: kvp_of_aux_types__string_aux_types__dynamic_float
    repeat: expr
    repeat-expr: length.value
types:
  kvp_of_aux_types__string_aux_types__dynamic_float:
    seq:
      - id: key
        type: aux_types::string
      - id: value
        type: aux_types::dynamic_float