echo "User is:" && id -u -n
echo ""
echo "1 - Disable sleep mode"
echo "2 - Enable sleep mode"
read -p "Mode: " mode

if ((mode == 1)); then
	sudo systemctl mask sleep.target suspend.target hibernate.target hybrid-sleep.target
fi

if ((mode == 2)); then
	sudo systemctl unmask sleep.target suspend.target hibernate.target hybrid-sleep.target
fi
