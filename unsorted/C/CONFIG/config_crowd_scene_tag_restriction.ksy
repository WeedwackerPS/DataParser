types:
  config_crowd_scene_tag_restriction:
    seq:
      - id: bit_field
        type: u1
      - id: scene_tags
        type: array_of__aux_types__string__length_u
        if: has_field_scene_tags
      - id: is_active
        type: u1
        if: has_field_is_active
    instances:
      has_field_scene_tags: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_is_active: # Field №1
        value: (bit_field & 0b10) != 0
