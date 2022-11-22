types:
  array_of__config_homeworld_furniture_light_detail__length_u:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: data
        type: config_homeworld_furniture_light_detail
        repeat: expr
        repeat-expr: length.value
