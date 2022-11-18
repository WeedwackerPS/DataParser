meta:
  id: dict_of__u1_array_of__aux_types__vlq_base128_le_u__length_u
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
    - ../ArrayType/array_of__aux_types__vlq_base128_le_u__length_u
seq:
  - id: length
    type: aux_types::vlq_base128_le_u
  - id: items
    type: kvp_of_u1_array_of__aux_types__vlq_base128_le_u__length_u
    repeat: expr
    repeat-expr: length.value
types:
  kvp_of_u1_array_of__aux_types__vlq_base128_le_u__length_u:
    seq:
      - id: key
        type: u1
      - id: value
        type: array_of__aux_types__vlq_base128_le_u__length_u
