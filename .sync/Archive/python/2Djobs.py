i = 0

for j in range(0,39):
  pbs_id = j
  #print pbs_id*.01 # for troubleshooting
  pf_runs = 13 # number of pf at each alpha
  pf_index = (pbs_id % pf_runs) + 1 # the +1 makes the runs indexed 1 through x rather than 0 through x-1.
  pf_interval = 0.01
  pf = 0.48 + (pf_index-1)*pf_interval # pf that will be run

  alpha_seed = (pbs_id - pf_index)/pf_runs #integer index of alpha
  alpha = (0.30 - (alpha_seed-1)*0.10) - 0.085 + pf_interval - 0.03666666666667 # each job in the array will run these alpha, pf times

  print("Packing fraction = ", round(pf,2))  # for troubleshooting
  print("Colloid packing fraction = ", round(alpha,2)) # for book-keeping
