meta:
  id: enum__graphics_setting_entry_type
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
seq:
  - id: data
    type: aux_types::vlq_base128_le_s
instances:
  value:
    value: data.value
    enum: graphics_setting_entry_type
enums:
  graphics_setting_entry_type:
    0: invalid
    1: target_frame_rate
    2: render_resolution
    3: shadow_quality
    4: postprocess_effect
    5: particle_effect
    6: comprehensive_quality
    7: v_sync
    8: anti_aliasing
    9: volumetric_fog
    10: reflection
    11: motion_blur
    12: bloom
    13: crowd_density
    14: obsolete_online_effect
    15: screen_subsurface_scattering
    16: online_effect
    17: anisotropic_filtering
