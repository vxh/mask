{application, mask,
 [{description, "mask"},
  {vsn, "0.01"},
  {modules, [
    mask,
    mask_app,
    mask_sup,
    mask_web,
    mask_deps
  ]},
  {registered, []},
  {mod, {mask_app, []}},
  {env, []},
  {applications, [kernel, stdlib, crypto]}]}.
