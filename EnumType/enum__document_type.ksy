meta:
  id: enum__document_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__document_type:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: document_type
enums:
  document_type:
    0: book
    1: video
