if [[ "$#" -lt 3 ]]; then
    echo "Usage: $0 <your listening port> <client ip> <client port>"
else
    while [[ true ]]; do
        netcat -l -p $1
    done &

    while [[ true ]]; do
        echo "Enter message: "
        read message
        echo $message | netcat $2 $3
    done
fi