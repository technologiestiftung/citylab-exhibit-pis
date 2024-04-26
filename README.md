![](https://img.shields.io/badge/Built%20with%20%E2%9D%A4%EF%B8%8F-at%20Technologiestiftung%20Berlin-blue)

<!-- ALL-CONTRIBUTORS-BADGE:START - Do not remove or modify this section -->

[![All Contributors](https://img.shields.io/badge/all_contributors-0-orange.svg?style=flat-square)](#contributors-)

<!-- ALL-CONTRIBUTORS-BADGE:END -->

# CityLAB Exhibit Pis

## FullPageOS

Using the FullPageOS project (https://github.com/guysoft/FullPageOS) to display pages. Use the Raspberry Pi Imager to install the FullPageOS. Then follow the instructions in the repo to change default page and wifi.

Only change needed is to run the following command if your default user is not called `pi`.

```bash
sudo ln -s /home/<YOUR USER NAME> /home/pi
```

See https://github.com/guysoft/FullPageOS/issues/464#issuecomment-1552238176

To set the page the Pi should display, edit the file `/boot/fullpageos.txt`. You can do this on the mounted SD card or after booting the Pi by running the following command:

```bash
sudo vim /boot/fullpageos.txt
# change the URL to the one you want to display
# save and exit
```

## Video Looper

Download the latest image from https://videolooper.de/#download_latest and use the Pi Imager to install it on the SD card.

Make sure to alter the hostname, password and wifi settings in the settings tab of Pi Imager. Also in services add your ssh key if you have one (if not use password login) and enable ssh.

After booting the Pi, you can add videos to the USB stick and they will be played in a loop.

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
