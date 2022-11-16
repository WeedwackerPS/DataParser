meta:
  id: enum__weapon_enhance_rule_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
seq:
  - id: data
    type: aux_types::vlq_base128_le_s
instances:
  value:
    value: data.value
    enum: weapon_enhance_rule_type
enums:
  weapon_enhance_rule_type:
    0: weapon_enhance_type_enable
    1: weapon_enhance_type_disabled
