types:
  watcher_predicate_config:
    seq:
      - id: bit_field
        type: aux_types::length_prefixed_bitfield
      - id: predicate_type
        type: enum__watcher_predicate_type
        if: has_field_predicate_type
      - id: param_list
        type: array_of__aux_types__vlq_base128_le_u__length_u
        if: has_field_param_list
    instances:
      has_field_predicate_type: # Field №0
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
      has_field_param_list: # Field №1
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
