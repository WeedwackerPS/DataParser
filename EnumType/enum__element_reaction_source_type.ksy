meta:
  id: enum__element_reaction_source_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__element_reaction_source_type:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: element_reaction_source_type
enums:
  element_reaction_source_type:
    0: none
    1: being_hit
    2: modifier_add
    3: modifier_remove
