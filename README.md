### Purpose
This script generates a dataset of all holidays and their dates in a given set of countries and years.

### Usage
This script requires a [Nager.Date API](https://github.com/nager/Nager.Date) instance.
The file that has been provided is configured to use the official API, however if you are looking to make more than 50 searches a day, you need to provide your own.
They offer an easy docker localhost setup in their repo, you can provide its address in the CalGen.cfg file.
You also need to provide a space separated list of Alpha-2 country codes as defined by the [ISO-3166 standard](https://en.wikipedia.org/wiki/List_of_ISO_3166_country_codes) in the CountryCodes variable.

### Required tools
This script requires the following packages:
- bash
- jq
- curl

### Inspiration
This script was made for and inspired by [a friend](https://www.gatra.nl), with the goal of creating inclusive calendars for businesses.
She can be reached on her website for corporate inclusivity coaching and services.
