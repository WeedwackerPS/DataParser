meta:
  id: enum__op_responder
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__op_responder:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: op_responder
enums:
  op_responder:
    0: caster
    1: receiver
    2: free_agent
