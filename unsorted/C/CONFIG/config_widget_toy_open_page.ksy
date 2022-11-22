types:
  config_widget_toy_open_page:
    seq:
      - id: base
        type: config_base_widget_toy
      - id: bit_field
        type: u1
      - id: page_name
        type: aux_types::string
        if: has_field_page_name
    instances:
      has_field_page_name: # Field №0
        value: (bit_field & 0b1) != 0
      # Base class fields
      is_consume_material:
        value: base.is_consume_material
      cd_group:
        value: base.cd_group
      tags:
        value: base.tags
      business_type:
        value: base.business_type
