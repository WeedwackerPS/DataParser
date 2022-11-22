types:
  config_template_data:
    seq:
      - id: bit_field
        type: u1
      - id: template_name
        type: aux_types::string
        if: has_field_template_name
      - id: param_datas
        type: dict_of__aux_types__string_aux_types__string
        if: has_field_param_datas
    instances:
      has_field_template_name: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_param_datas: # Field №1
        value: (bit_field & 0b10) != 0
