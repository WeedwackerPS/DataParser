types:
  product_id_config:
    seq:
      - id: bit_field
        type: aux_types::length_prefixed_bitfield
      - id: product_id
        type: aux_types::string
        if: has_field_product_id
      - id: config_id
        type: aux_types::vlq_base128_le_u
        if: has_field_config_id
      - id: is_internal
        type: u1
        if: has_field_is_internal
      - id: entitlement_id
        type: aux_types::string
        if: has_field_entitlement_id
      - id: catalog_item_id
        type: aux_types::string
        if: has_field_catalog_item_id
      - id: platform_type_str_list
        type: array_of__aux_types__string__length_u
        if: has_field_platform_type_str_list
    instances:
      has_field_product_id: # Field №0
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
      has_field_config_id: # Field №1
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
      has_field_is_internal: # Field №2
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
      has_field_entitlement_id: # Field №3
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
      has_field_catalog_item_id: # Field №4
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
      has_field_platform_type_str_list: # Field №5
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
