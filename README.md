# Let me in! 👍

Tired of clicking through [captive portal](https://en.wikipedia.org/wiki/Captive_portal) authentication screens? Me too.

Run `./letmein.sh` for usage instructions.

## How to contribute

Contributions are welcome. Please check the [issues](https://github.com/specious/letmein/issues) and feel free to point out how it could be better or open a pull request.

### Use a web browser to record an authentication procedure

One way to observe an authentication mechanism is to have the "Network" panel open in a browser's [developer tools](https://developers.google.com/web/tools/chrome-devtools/#network) while you click through the captive portal screen. Modern browsers allow exporting the [cURL](https://github.com/curl/curl) command to replay a network request with a "Copy" -> "Copy as cURL" context menu option.

Fiddle with those exported requests and authenticate manually by running the curl commands to distill the essential ingredients for the authentication to work.

## License

MIT
