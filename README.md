![](https://img.shields.io/badge/Built%20with%20%E2%9D%A4%EF%B8%8F-at%20Technologiestiftung%20Berlin-blue)

<!-- ALL-CONTRIBUTORS-BADGE:START - Do not remove or modify this section -->

[![All Contributors](https://img.shields.io/badge/all_contributors-0-orange.svg?style=flat-square)](#contributors-)

<!-- ALL-CONTRIBUTORS-BADGE:END -->

# CityLAB Exhibit VLC Video Looper

This project is a simple video looper for VLC player. It is intended to be used on a Raspberry Pi 4 with the Raspberry Pi OS (64-Bit) installed in our exhibition here at the CityLAB.

Features:

- [x] Raspi Desktop Environment for easy access
- [x] SSH access as well
- [x] Auto-mount USB flash drives

Todo:

- [ ] Website in kiosk mode
- [ ] Touch displays
- [ ] Ready made image for faster installation

## Prerequisites

- Raspberry Pi 4
- Raspberry Pi Imager
- SD Card (16GB or more)

## Installation

Flash your SD Card with the Raspberry Pi OS (64-Bit)
Make sure to:

- Set a new user name and password
- Set a hostname
- Set you WiFi credentials
- Add your ssh key (if you have one) and enable ssh

After the first boot run the following commands to customize your installation

```bash
sudo apt-get update
sudo apt-get install --yes vim autofs vlc
```

To allow the Pi to auto-mount USB flash drives run the following steps:

```bash
sudo vim /etc/auto.usb
## add at the end
* -fstype=auto,sync,ro,nodev,nosuid,umask=000 :/dev/&
## save and exit
sudo vim /etc/auto.usb
## add
* -fstype=auto,sync,ro,nodev,nosuid,umask=000 :/dev/&
## save and exit
sudo systemctl restart autofs
sudo vim /etc/udev/rules.d/10-automount.rules
## add
ACTION=="add", KERNEL=="sd*[!0]", SUBSYSTEM=="block", RUN+="/usr/bin/systemd-mount --no-block --automount=yes --collect /dev/%k /mnt/%k"

ACTION=="remove", KERNEL=="sd*[!0]", SUBSYSTEM=="block", ENV{SYSTEMD_WANTS}+="umount.target", RUN+="/usr/bin/systemd-mount --umount --no-block --collect /mnt/%k"
## save and exit
sudo udevadm control --reload-rules
sudo reboot

```

To enable VLC player on startup do run the following commands.

Clone this repo

```bash
git clone https://github.com/technologiestiftung/vlc-video-looper.git ~/Desktop
```

Now we setup vlc to play after boot into the desktop

```bash
vim ~/.bashrc
## add
export XDG_CONFIG_HOME=$HOME/.config
## save and exit

mkdir -p ~/.config/autostart
vim ~/.config/autostart/display.destktop
## add and replace with your username

[Desktop Entry]
Name=cvlc
Exec=/home/<YOUR-USER-NAME>/Desktop/vlc-video-looper/looper.sh
## save and exit

chmod +x ~/.config/autostart/display.destktop
chmod +x ~/Desktop/vlc-video-looper/looper.sh
```

## Development

- Edit ~/Desktop/vlc-video-looper/looper.sh

## Contributing

Before you create a pull request, write an issue so we can discuss your changes.

## Contributors

Thanks goes to these wonderful people ([emoji key](https://allcontributors.org/docs/en/emoji-key)):

<!-- ALL-CONTRIBUTORS-LIST:START - Do not remove or modify this section -->
<!-- prettier-ignore-start -->
<!-- markdownlint-disable -->
<table>
  <tr>
  </tr>
</table>

<!-- markdownlint-restore -->
<!-- prettier-ignore-end -->

<!-- ALL-CONTRIBUTORS-LIST:END -->

This project follows the [all-contributors](https://github.com/all-contributors/all-contributors) specification. Contributions of any kind welcome!

## Credits

<table>
  <tr>
    <td>
      Made by <a href="https://citylab-berlin.org/de/start/">
        <br />
        <br />
        <img width="200" src="https://logos.citylab-berlin.org/logo-citylab-berlin.svg" />
      </a>
    </td>
    <td>
      A project by <a href="https://www.technologiestiftung-berlin.de/">
        <br />
        <br />
        <img width="150" src="https://logos.citylab-berlin.org/logo-technologiestiftung-berlin-de.svg" />
      </a>
    </td>
    <td>
      Supported by <a href="https://www.berlin.de/rbmskzl/">
        <br />
        <br />
        <img width="80" src="https://logos.citylab-berlin.org/logo-berlin-senatskanzelei-de.svg" />
      </a>
    </td>
  </tr>
</table>

## Related Projects
