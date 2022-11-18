meta:
  id: qte_excel_config
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
    - ../ArrayType/array_of__aux_types__vlq_base128_le_s__length_u
    - ../EnumType/enum__qte_type
    - ../EnumType/enum__qte_action_type
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: id
    type: aux_types::vlq_base128_le_u
    if: has_field_id
  - id: start_step_id
    type: aux_types::vlq_base128_le_u
    if: has_field_start_step_id
  - id: qte_type
    type: enum__qte_type
    if: has_field_qte_type
  - id: start_exec
    type: array_of__qte_exec__length_s
    if: has_field_start_exec
  - id: success_exec
    type: array_of__qte_exec__length_s
    if: has_field_success_exec
  - id: fail_exec
    type: array_of__qte_exec__length_s
    if: has_field_fail_exec
instances:
  has_field_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_start_step_id: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_qte_type: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_start_exec: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_success_exec: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_fail_exec: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
types:
  array_of__qte_exec__length_s:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_s
      - id: data
        type: qte_exec
        repeat: expr
        repeat-expr: length.value
  qte_exec:
    seq:
      - id: bit_field
        type: aux_types::length_prefixed_bitfield
      - id: type
        type: enum__qte_action_type
        if: has_field_type
      - id: param
        type: array_of__aux_types__vlq_base128_le_s__length_u
        if: has_field_param
    instances:
      has_field_type: # Field №0
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
      has_field_param: # Field №1
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
