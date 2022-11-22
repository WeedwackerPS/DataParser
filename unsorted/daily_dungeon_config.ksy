types:
  daily_dungeon_config:
    seq:
      - id: bit_field
        type: aux_types::length_prefixed_bitfield
      - id: id
        type: aux_types::vlq_base128_le_u
        if: has_field_id
      - id: monday
        type: array_of__aux_types__vlq_base128_le_u__length_u
        if: has_field_monday
      - id: tuesday
        type: array_of__aux_types__vlq_base128_le_u__length_u
        if: has_field_tuesday
      - id: wednesday
        type: array_of__aux_types__vlq_base128_le_u__length_u
        if: has_field_wednesday
      - id: thursday
        type: array_of__aux_types__vlq_base128_le_u__length_u
        if: has_field_thursday
      - id: friday
        type: array_of__aux_types__vlq_base128_le_u__length_u
        if: has_field_friday
      - id: saturday
        type: array_of__aux_types__vlq_base128_le_u__length_u
        if: has_field_saturday
      - id: sunday
        type: array_of__aux_types__vlq_base128_le_u__length_u
        if: has_field_sunday
    instances:
      has_field_id: # Field №0
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
      has_field_monday: # Field №1
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
      has_field_tuesday: # Field №2
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
      has_field_wednesday: # Field №3
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
      has_field_thursday: # Field №4
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
      has_field_friday: # Field №5
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
      has_field_saturday: # Field №6
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
      has_field_sunday: # Field №7
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
