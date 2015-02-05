IFS=","
    for v in $RUNNABLE
    do
        QSUB_LINE="ARRAY_TASK_ID=$v sbatch job-stampede.sh -J hept-512-$v"
        echo "Submitting: ${QSUB_LINE}"
        ${QSUB_LINE}
    done
