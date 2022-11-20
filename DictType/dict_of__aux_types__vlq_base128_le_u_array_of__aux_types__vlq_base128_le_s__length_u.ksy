meta:
  id: dict_of__aux_types__vlq_base128_le_u_array_of__aux_types__vlq_base128_le_s__length_u
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
    - ../ArrayType/array_of__aux_types__vlq_base128_le_s__length_u
seq:
  - id: length
    type: aux_types::vlq_base128_le_u
  - id: items
    type: kvp_of_aux_types__vlq_base128_le_u_array_of__aux_types__vlq_base128_le_s__length_u
    repeat: expr
    repeat-expr: length.value
types:
  kvp_of_aux_types__vlq_base128_le_u_array_of__aux_types__vlq_base128_le_s__length_u:
    seq:
      - id: key
        type: aux_types::vlq_base128_le_u
      - id: value
        type: array_of__aux_types__vlq_base128_le_s__length_u
