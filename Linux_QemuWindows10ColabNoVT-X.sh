wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip > /dev/null 2>&1
unzip ngrok-stable-linux-amd64.zip > /dev/null 2>&1
./ngrok authtoken 2F4K74YKRsxbB66EzDrCMG9Yfdr_4QaaqMkXESJydZgy1qZ9a
nohup ./ngrok tcp 5900 &>/dev/null &
echo Please wait for installing...
echo "Installing QEMU (2-3m)..."
sudo apt install qemu-system-x86 curl -y > /dev/null 2>&1
echo Downloading Windows Disk...
curl -L -o lite10.qcow2 https://app.vagrantup.com/daibangcam/boxes/windowsQCOW/versions/3.0/providers/qemu.box
echo "Windows 10 x64 Lite On Google Colab"
echo Your VNC IP Address:
curl --silent --show-error http://127.0.0.1:4040/api/tunnels | sed -nE 's/.*public_url":"tcp:..([^"]*).*/\1/p'
echo "Note: Use Right-Click Or Ctrl+C To Copy"
echo "Please Keep Colab Tab Open, Maximum Time 12h"
echo "Press F12, choose tab Console and paste these line then press Enter"
echo ================================
echo "function ClickConnect() {
  console.log('Working')
  document
    .querySelector('#top-toolbar > colab-connect-button')
    .shadowRoot.querySelector('#connect')
    .click()
} 
setInterval(ClickConnect, 60000)"
echo ================================
echo Script by HanO
echo Cell: +84978.39.41.43
echo Email: daibangcam@gmail.com
echo Website: hano.cf
echo ================================
sudo qemu-system-x86_64 -vnc :0 -hda lite10.qcow2  -smp cores=2  -m 8192M -machine usb=on -device usb-tablet > /dev/null 2>&1
