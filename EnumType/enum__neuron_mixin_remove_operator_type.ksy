meta:
  id: enum__neuron_mixin_remove_operator_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__neuron_mixin_remove_operator_type:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: neuron_mixin_remove_operator_type
enums:
  neuron_mixin_remove_operator_type:
    0: one_by_one
    1: first_finish_delete
    2: all_finish_delete
