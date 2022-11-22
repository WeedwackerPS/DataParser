types:
  config_base_widget_toy:
    seq:
      - id: bit_field
        type: u1
      - id: is_consume_material
        type: u1
        if: has_field_is_consume_material
      - id: cd_group
        type: aux_types::vlq_base128_le_u
        if: has_field_cd_group
      - id: tags
        type: array_of__enum__widget_occupy_tag__length_u
        if: has_field_tags
      - id: business_type
        type: enum__widget_business_type
        if: has_field_business_type
    instances:
      has_field_is_consume_material: # Field №0
        value: (bit_field & 0b0001) != 0
      has_field_cd_group: # Field №1
        value: (bit_field & 0b0010) != 0
      has_field_tags: # Field №2
        value: (bit_field & 0b0100) != 0
      has_field_business_type: # Field №3
        value: (bit_field & 0b1000) != 0
