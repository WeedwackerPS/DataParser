meta:
  id: element_hitting_other_predicated_mixin
  endian: le
  license: GPLv2
  imports:
    - ../config_ability_mixin
    - ../Common/array_of__disp__config_ability_predicate__length_u
    - ../ConfigAbilityAction/element_batch_predicated
seq:
  - id: base
    type: config_ability_mixin
  - id: bit_field
    type: u1
  - id: pre_predicates
    type: array_of__disp__config_ability_predicate__length_u
    if: has_field_pre_predicates
  - id: element_batch_predicateds
    type: array_of__element_batch_predicated__length_u
    if: has_field_element_batch_predicateds
instances:
  has_field_pre_predicates: # Field №0
    value: (bit_field & 0b01) != 0
  has_field_element_batch_predicateds: # Field №1
    value: (bit_field & 0b10) != 0
  # Base class fields
  is_unique:
    value: base.is_unique
types:
  array_of__element_batch_predicated__length_u:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: data
        type: element_batch_predicated
        repeat: expr
        repeat-expr: length.value
