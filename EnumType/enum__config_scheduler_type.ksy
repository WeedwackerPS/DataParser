meta:
  id: enum__config_scheduler_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
seq:
  - id: data
    type: aux_types::vlq_base128_le_s
instances:
  value:
    value: data.value
    enum: config_scheduler_type
enums:
  config_scheduler_type:
    0: i_update
    1: i_late_pre_update
    2: i_late_post_update
    3: i_after_res_to_update_end
    4: i_late_post_update_to_next_before_late_update
    5: i_render_to_next_before_res
    6: i_render_to_next_before_late_update
    7: i_render_to_next_before_network
    8: i_after_network_to_render
    9: i_after_entity_to_effect_end
    10: i_after_late_update_post
    100: g_render_to_next_before_late_update
