wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip > /dev/null 2>&1
unzip ngrok-stable-linux-amd64.zip > /dev/null 2>&1
read -p "Dán authtoken vào đây (Sao chép và Ctrl+V sau đó nhấn Enter): " CRP
./ngrok authtoken $CRP 
nohup ./ngrok tcp 5900 &>/dev/null &
echo Vui lòng đợi trong quá trình cài đặt...
sudo apt update -y > /dev/null 2>&1
echo "Đang cài đặt QEMU (2-3 phút)..."
sudo apt install qemu-system-x86 curl -y > /dev/null 2>&1
echo Đang tải ổ đĩa Windows...
curl -L -o lite10.qcow2 https://bit.ly/32OIl8Y
echo "Windows 10 x64 Lite trên Gitpod, GCloud và GColab"
echo Địa chỉ IP VNC của bạn:
curl --silent --show-error http://127.0.0.1:4040/api/tunnels | sed -nE 's/.*public_url":"tcp:..([^"]*).*/\1/p'
echo "Lưu ý: Sử dụng Chuột Phải hoặc Ctrl+C để sao chép"
echo "Vui lòng giữ Tab này mở, tối đa 50 giờ"
echo "Hỗ trợ kênh YT-> Mai Thành Tiến"
echo "LinK: https://youtube.com/@tienmai2912"
b='\033[1;34m'
r='\E[31m'
g='\E[32m'
c='\E[36m'
endc='\E[0m'
enda='\033[0m'

# Banner
printf """$b
\033[1;34m░██████╗░█████╗░███╗░░██╗░██████╗░
\033[1;37m██╔════╝██╔══██╗████╗░██║██╔════╝░
\033[1;33m╚█████╗░███████║██╔██╗██║██║░░██╗░
\033[1;32m░╚═══██╗██╔══██║██║╚████║██║░░╚██╗
\033[1;35m██████╔╝██║░░██║██║░╚███║╚██████╔╝
\033[32;5╚═════╝░╚═╝░░╚═╝╚═╝░░╚══╝░╚═════╝░     
\033[1;32m</> Đăng kí kênh Youtube: Mai Thành Tiến </>
\033[1;36m────────────────────────────────────────────────────────────
\033[1;34m[\033[1;31m</>\033[1;34m] \033[1;33mTOOL GỘP CSTOOL
\033[1;34m[\033[1;31m</>\033[1;34m] \033[1;32mADMIN:\033[1;35m Mai Thành Tiến (Cà Sang)
\033[1;34m[\033[1;31m</>\033[1;34m] \033[1;34mBOX TELE:\033[1;37m https://t.me/MaiThanhTien
\033[1;34m[\033[1;31m</>\033[1;34m] \033[1;35mYOUTUBE:\033[1;31m https://youtube.com/@tienmai2912
\033[1;34m[\033[1;31m</>\033[1;34m] \033[1;37mFACEBOOK:\033[1;34m facebook.com/1275398690
\033[1;36m────────────────────────────────────────────────────────────
$endc$enda""";

sudo qemu-system-x86_64 -vnc :0 -hda lite10.qcow2 -smp cores=4 -m 16384M -machine usb=on -device usb-tablet > /dev/null 2>&1
sleep 43210
