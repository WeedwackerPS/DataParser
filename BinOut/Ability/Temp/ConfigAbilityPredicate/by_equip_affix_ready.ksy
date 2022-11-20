meta:
  id: by_equip_affix_ready
  endian: le
  license: GPL
  imports:
    - ../config_ability_predicate
    - ../../../../aux_types
seq:
  - id: base
    type: config_ability_predicate
  - id: bit_field
    type: u1
  - id: equip_affix_data_id
    type: aux_types::vlq_base128_le_u
    if: has_field_equip_affix_data_id
instances:
  has_field_equip_affix_data_id: # Field №0
    value: (bit_field & 0b1) != 0
  # Base class fields
  target:
    value: base.target
