while true; do
    echo "This is the outer loop."
    sleep 1

    for iteration in {1..3}; do
        echo "This is inner loop ${iteration}."
        if [[ ${iteration} -eq 2 ]]; then
            break 2
        fi
        sleep 1

    done

done
echo "This is the end of the script, thanks to playing!"
