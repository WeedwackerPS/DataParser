types:
  config_widget_toy_treasure_map_detector:
    seq:
      - id: base
        type: config_base_widget_toy
      - id: bit_field
        type: u1
      - id: gadget_id
        type: aux_types::vlq_base128_le_u
        if: has_field_gadget_id
      - id: radius_succ
        type: aux_types::vlq_base128_le_u
        if: has_field_radius_succ
      - id: detect_range
        type: aux_types::vlq_base128_le_u
        if: has_field_detect_range
      - id: gadget_duration
        type: aux_types::vlq_base128_le_u
        if: has_field_gadget_duration
    instances:
      has_field_gadget_id: # Field №0
        value: (bit_field & 0b0001) != 0
      has_field_radius_succ: # Field №1
        value: (bit_field & 0b0010) != 0
      has_field_detect_range: # Field №2
        value: (bit_field & 0b0100) != 0
      has_field_gadget_duration: # Field №3
        value: (bit_field & 0b1000) != 0
      # Base class fields
      is_consume_material:
        value: base.is_consume_material
      cd_group:
        value: base.cd_group
      tags:
        value: base.tags
      business_type:
        value: base.business_type
