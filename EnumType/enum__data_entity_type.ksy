meta:
  id: enum__data_entity_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__data_entity_type:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: data_entity_type
enums:
  data_entity_type:
    0: data_entity_none
    1: data_entity_monster
    2: data_entity_gadget
