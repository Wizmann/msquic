sudo tc qdisc del dev lo root
sudo tc qdisc add dev lo root handle 1:0 netem loss 0.1%  delay 50ms
sleep 13s
echo '10% loss'
sudo tc qdisc del dev lo root 
sudo tc qdisc add dev lo root handle 1:0 netem loss 13% delay 50ms
sleep 13s
echo '50ms, 0.01%'
sudo tc qdisc del dev lo root
sudo tc qdisc add dev lo root handle 1:0 netem delay 50ms loss 0.01% 
sleep 20s
sudo tc qdisc del dev lo root
