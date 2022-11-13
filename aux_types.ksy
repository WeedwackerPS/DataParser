meta:
  id: aux_types
  file-extension: aux_types
  endian: le
doc: |
  Miscellaneous types used in serialization
  Credit for dynamic_* stuff goes to Raz
types:
  error:
    doc: Type used in misc situations to signal about an error
    seq:
      - id: message
        contents: "There was an error parsing data; please check KSY definition"
  string:
    seq:
      - id: length
        type: vlq_base128_le_u
      - id: data
        size: length.value
        type: str
        encoding: UTF-8
  length_prefixed_bitfield:
    seq:
      - id: length
        type: vlq_base128_le_u
      - id: bitfield
        type: u1
        repeat: expr
        repeat-expr: length.value
    instances:
      value:
        value: >-
          (length.value >= 1 ? bitfield[0] : 0) +
          (length.value >= 2 ? (bitfield[1] <<  8) : 0) +
          (length.value >= 3 ? (bitfield[2] << 16) : 0) +
          (length.value >= 4 ? (bitfield[3] << 24) : 0) +
          (length.value >= 5 ? (bitfield[4] << 32) : 0) +
          (length.value >= 6 ? (bitfield[5] << 40) : 0) +
          (length.value >= 7 ? (bitfield[6] << 48) : 0) +
          (length.value >= 8 ? (bitfield[7] << 56) : 0) +
          (length.value >= 9 ? (bitfield[8] << 64) : 0)
  dynamic_int:
    seq:
      - id: is_string
        type: u1
      - id: data
        type:
          switch-on: is_string
          cases:
            0: vlq_base128_le_s
            1: string
  base_dynamic_float:
    seq:
      - id: is_string
        type: u1
      - id: data
        type:
          switch-on: is_string
          cases:
            0: f4
            1: string
  dynamic_operator:
    seq:
      - id: is_operator
        type: u1 # TODO: bool!
      - id: data
        type:
          switch-on: is_operator
          cases:
            0: base_dynamic_float
            1: vlq_base128_le_s
  dynamic_formula:
    seq:
      - id: length
        type: vlq_base128_le_s
      - id: elements
        type: dynamic_operator
        repeat: expr
        repeat-expr: length.value
  dynamic_float:
    seq:
      - id: is_formula
        type: u1 # TODO: bool!
      - id: data
        type:
          switch-on: is_formula
          cases:
            0: base_dynamic_float
            1: dynamic_formula
  dynamic_string:
    seq:
      - id: is_dynamic
        type: u1 # TODO: bool!
      - id: data
        type: string
  dynamic_argument:
    seq: 
      - id: type_code
        type: vlq_base128_le_u
      - id: data
        type:
          switch-on: type_code.value
          cases:
            1: s1
            2: u1
            3: s2
            4: u2
            5: s4
            6: u4
            7: f4
            8: f8
            9: u1 # TODO: bool!
            10: string
  vlq_base128_le: # Stolen from Kaitai website and modified accordingly with Zigzag encoding
    seq:
      - id: ks__groups
        type: group
        repeat: until
        repeat-until: not _.has_next
    types:
      group:
        seq:
          - id: b
            type: u1
        instances:
          has_next:
            value: (b & 0b1000_0000) != 0
            doc: If true, then we have more bytes to read
          value:
            value: b & 0b0111_1111
            doc: The 7-bit (base128) numeric value chunk of this group
    instances:
      len:
        value: ks__groups.size
      value_unsigned:
        value: >-
          ks__groups[0].value
          + (len >= 2 ? (ks__groups[1].value << 7) : 0)
          + (len >= 3 ? (ks__groups[2].value << 14) : 0)
          + (len >= 4 ? (ks__groups[3].value << 21) : 0)
          + (len >= 5 ? (ks__groups[4].value << 28) : 0)
          + (len >= 6 ? (ks__groups[5].value << 35) : 0)
          + (len >= 7 ? (ks__groups[6].value << 42) : 0)
          + (len >= 8 ? (ks__groups[7].value << 49) : 0)
        doc: Resulting unsigned value as normal integer
      value_absolute:
        value: 'value_unsigned >> 1'
        doc: Absolute value for Zigzag-encoded integer
      sign_bit:
        value: 'value_unsigned & 1'
        doc: Sign bit for Zigzag-encoded integer
      value_signed:
        value: 'value_absolute ^ (-sign_bit)'
        doc: Resulting signed value as Zigzag-encoded integer
  vlq_base128_le_s:
    seq:
      - id: data
        type: vlq_base128_le
    instances:
      value:
        value: data.value_signed
  vlq_base128_le_u:
    seq:
      - id: data
        type: vlq_base128_le
    instances:
      value:
        value: data.value_unsigned
