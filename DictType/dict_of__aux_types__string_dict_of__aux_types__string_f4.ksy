meta:
  id: dict_of__aux_types__string_dict_of__aux_types__string_f4
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
    - dict_of__aux_types__string_f4
seq:
  - id: length
    type: aux_types::vlq_base128_le_u
  - id: items
    type: kvp_of_aux_types__string_dict_of__aux_types__string_f4
    repeat: expr
    repeat-expr: length.value
types:
  kvp_of_aux_types__string_dict_of__aux_types__string_f4:
    seq:
      - id: key
        type: aux_types::string
      - id: value
        type: dict_of__aux_types__string_f4