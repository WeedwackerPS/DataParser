meta:
  id: enum__action_token_source_type
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
seq:
  - id: data
    type: aux_types::vlq_base128_le_s
instances:
  value:
    value: data.value
    enum: action_token_source_type
enums:
  action_token_source_type:
    -1: source_invalid
    0: source_hit
    1: element_reaction
    2: low_effect_in_token_queue
    3: source_count
