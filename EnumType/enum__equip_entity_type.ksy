meta:
  id: enum__equip_entity_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__equip_entity_type:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: equip_entity_type
enums:
  equip_entity_type:
    0: none
    1: sword_one_hand
    2: cross_bow
    3: small_shield
    4: spear
    5: catalyst
    6: bow
    7: claymore
    8: pole
