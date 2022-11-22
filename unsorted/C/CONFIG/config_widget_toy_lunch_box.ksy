types:
  config_widget_toy_lunch_box:
    seq:
      - id: base
        type: config_base_widget_toy
      - id: bit_field
        type: u1
      - id: revive_materials
        type: array_of__aux_types__vlq_base128_le_u__length_u
        if: has_field_revive_materials
      - id: heal_materials
        type: config_widget_toy_lunch_box_heal_material
        if: has_field_heal_materials
    instances:
      has_field_revive_materials: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_heal_materials: # Field №1
        value: (bit_field & 0b10) != 0
      # Base class fields
      is_consume_material:
        value: base.is_consume_material
      cd_group:
        value: base.cd_group
      tags:
        value: base.tags
      business_type:
        value: base.business_type
