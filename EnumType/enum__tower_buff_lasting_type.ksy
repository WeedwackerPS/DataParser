meta:
  id: enum__tower_buff_lasting_type
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
seq:
  - id: data
    type: aux_types::vlq_base128_le_s
instances:
  value:
    value: data.value
    enum: tower_buff_lasting_type
enums:
  tower_buff_lasting_type:
    0: tower_buff_lasting_none
    1: tower_buff_lasting_floor
    2: tower_buff_lasting_immediate
    3: tower_buff_lasting_level
