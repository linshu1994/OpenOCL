function stage_vars_structure = variables(N, states, integrator_vars, controls, parameters)
stage_vars_structure = OclStructure();
stage_vars_structure.addRepeated({'states','integrator','controls','parameters','h'}, ...
  {states, ...
   integrator_vars, ...
   controls, ...
   parameters, ...
  OclMatrix([1,1])}, N);
stage_vars_structure.add('states', states);
stage_vars_structure.add('parameters', parameters);
