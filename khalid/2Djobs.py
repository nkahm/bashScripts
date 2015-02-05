i = 0

for j in range(0,45):
  pbs_id = j
  #print pbs_id*.01 # for troubleshooting
  pf_runs = 15 # number of pf at each alpha
  pf_index = (pbs_id % pf_runs) + 1 # the +1 makes the runs indexed 1 through x rather than 0 through x-1.
  pf_interval = 0.04
  pf = 0.10 + (pf_index-1)*pf_interval # pf that will be run

  alpha_seed = (pbs_id - pf_index)/pf_runs #integer index of alpha
  alpha = ((alpha_seed-1)*0.20 + 0.08) + 0.15 +pf_interval - 0.0066666666666666 # each job in the array will run these alpha, pf times

  print("Depletant Packing fraction = ", pf)  # for troubleshooting
  print("Colloid Packing fraction = ", alpha) # for book-keeping
