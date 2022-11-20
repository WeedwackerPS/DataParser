meta:
  id: array_of__enum__neuron_name__length_u
  endian: le
  license: GPL
  imports:
    - ../aux_types
    - ../EnumType/enum__neuron_name
seq:
  - id: length
    type: aux_types::vlq_base128_le_u
  - id: data
    type: enum__neuron_name
    repeat: expr
    repeat-expr: length.value
