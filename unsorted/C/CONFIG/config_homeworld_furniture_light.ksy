types:
  config_homeworld_furniture_light:
    seq:
      - id: bit_field
        type: u1
      - id: furniture_id
        type: aux_types::vlq_base128_le_u
        if: has_field_furniture_id
      - id: light_details
        type: array_of__config_homeworld_furniture_light_detail__length_u
        if: has_field_light_details
    instances:
      has_field_furniture_id: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_light_details: # Field №1
        value: (bit_field & 0b10) != 0
