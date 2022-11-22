types:
  config_external_voice_inferior_item:
    seq:
      - id: bit_field
        type: u1
      - id: guid
        type: aux_types::string
        if: has_field_guid
      - id: include
        type: u1
        if: has_field_include
    instances:
      has_field_guid: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_include: # Field №1
        value: (bit_field & 0b10) != 0
