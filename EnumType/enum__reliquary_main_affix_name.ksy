meta:
  id: enum__reliquary_main_affix_name
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
    enum: reliquary_main_affix_name
enums:
  reliquary_main_affix_name:
    0: reliquary_main_affix_none
    1: reliquary_main_affix_tough
    2: reliquary_main_affix_strong
    3: reliquary_main_affix_ruthless
    4: reliquary_main_affix_fatal
    5: reliquary_main_affix_glory
    6: reliquary_main_affix_eminence
    7: reliquary_main_affix_exultation
    8: reliquary_main_affix_cruel
    9: reliquary_main_affix_holiness
    10: reliquary_main_affix_fierce
    11: reliquary_main_affix_wisdom
    12: reliquary_main_affix_concentration
