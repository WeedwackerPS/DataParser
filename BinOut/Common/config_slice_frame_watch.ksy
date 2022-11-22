meta:
  id: config_slice_frame_watch
  endian: le
  license: GPLv2
  imports:
    - ../../aux_types
seq:
  - id: bit_field
    type: aux_types::vlq_base128_le_u
  - id: amortized_tick_massive_entity_budget
    type: f4
    if: has_field_amortized_tick_massive_entity_budget
  - id: shared_slice_frame_game_system_time
    type: f4
    if: has_field_shared_slice_frame_game_system_time
  - id: resources_manager_asset_job_min_time
    type: f4
    if: has_field_resources_manager_asset_job_min_time
  - id: resources_manager_asset_job_max_time
    type: f4
    if: has_field_resources_manager_asset_job_max_time
  - id: resources_manager_instantiate_min_time
    type: f4
    if: has_field_resources_manager_instantiate_min_time
  - id: resources_manager_instantiate_max_time
    type: f4
    if: has_field_resources_manager_instantiate_max_time
  - id: resources_manager_unload_min_time
    type: f4
    if: has_field_resources_manager_unload_min_time
  - id: resources_manager_unload_max_time
    type: f4
    if: has_field_resources_manager_unload_max_time
  - id: resources_manager_instantiate_job_time
    type: f4
    if: has_field_resources_manager_instantiate_job_time
  - id: level_appear_disappear_time_ms_default
    type: f4
    if: has_field_level_appear_disappear_time_ms_default
  - id: level_appear_disappear_wrr_weight
    type: aux_types::vlq_base128_le_s
    if: has_field_level_appear_disappear_wrr_weight
  - id: init_component_common_slicing_time_default
    type: f4
    if: has_field_init_component_common_slicing_time_default
  - id: remove_entity_time_ms_default
    type: f4
    if: has_field_remove_entity_time_ms_default
  - id: remove_enity_wrr_weight
    type: aux_types::vlq_base128_le_s
    if: has_field_remove_enity_wrr_weight
  - id: sectr_wrr_weight_default
    type: aux_types::vlq_base128_le_s
    if: has_field_sectr_wrr_weight_default
  - id: timer_manager_time_ms
    type: f4
    if: has_field_timer_manager_time_ms
  - id: use_legacy_generic_object_pool
    type: u1
    if: has_field_use_legacy_generic_object_pool
  - id: significance_task_thread_lod
    type: aux_types::vlq_base128_le_s
    if: has_field_significance_task_thread_lod
  - id: loading_use_sync_load
    type: u1
    if: has_field_loading_use_sync_load
instances:
  has_field_amortized_tick_massive_entity_budget: # Field №0
    value: (bit_field.value & 0b0000000000000000001) != 0
  has_field_shared_slice_frame_game_system_time: # Field №1
    value: (bit_field.value & 0b0000000000000000010) != 0
  has_field_resources_manager_asset_job_min_time: # Field №2
    value: (bit_field.value & 0b0000000000000000100) != 0
  has_field_resources_manager_asset_job_max_time: # Field №3
    value: (bit_field.value & 0b0000000000000001000) != 0
  has_field_resources_manager_instantiate_min_time: # Field №4
    value: (bit_field.value & 0b0000000000000010000) != 0
  has_field_resources_manager_instantiate_max_time: # Field №5
    value: (bit_field.value & 0b0000000000000100000) != 0
  has_field_resources_manager_unload_min_time: # Field №6
    value: (bit_field.value & 0b0000000000001000000) != 0
  has_field_resources_manager_unload_max_time: # Field №7
    value: (bit_field.value & 0b0000000000010000000) != 0
  has_field_resources_manager_instantiate_job_time: # Field №8
    value: (bit_field.value & 0b0000000000100000000) != 0
  has_field_level_appear_disappear_time_ms_default: # Field №9
    value: (bit_field.value & 0b0000000001000000000) != 0
  has_field_level_appear_disappear_wrr_weight: # Field №10
    value: (bit_field.value & 0b0000000010000000000) != 0
  has_field_init_component_common_slicing_time_default: # Field №11
    value: (bit_field.value & 0b0000000100000000000) != 0
  has_field_remove_entity_time_ms_default: # Field №12
    value: (bit_field.value & 0b0000001000000000000) != 0
  has_field_remove_enity_wrr_weight: # Field №13
    value: (bit_field.value & 0b0000010000000000000) != 0
  has_field_sectr_wrr_weight_default: # Field №14
    value: (bit_field.value & 0b0000100000000000000) != 0
  has_field_timer_manager_time_ms: # Field №15
    value: (bit_field.value & 0b0001000000000000000) != 0
  has_field_use_legacy_generic_object_pool: # Field №16
    value: (bit_field.value & 0b0010000000000000000) != 0
  has_field_significance_task_thread_lod: # Field №17
    value: (bit_field.value & 0b0100000000000000000) != 0
  has_field_loading_use_sync_load: # Field №18
    value: (bit_field.value & 0b1000000000000000000) != 0
