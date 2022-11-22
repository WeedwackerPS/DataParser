types:
  config_job_data:
    seq:
      - id: bit_field
        type: u1
      - id: job_map_data
        type: dict_of__aux_types__vlq_base128_le_s_dict_of__aux_types__vlq_base128_le_s_config_job
        if: has_field_job_map_data
    instances:
      has_field_job_map_data: # Field №0
        value: (bit_field & 0b1) != 0
