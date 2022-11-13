meta:
  id: enum__ability_entity_visible_reason
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__ability_entity_visible_reason:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: ability_entity_visible_reason
enums:
  ability_entity_visible_reason:
    0: default
    1: gallary
