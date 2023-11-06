resource "newrelic_synthetics_monitor" "monitor" {
  
  status           = "ENABLED"
  name            =  "MS-Ping"
  period           = "EVERY_MINUTE"
  uri              = "https://jsonplaceholder.typicode.com/"
  type             = "SIMPLE"
  locations_public = ["AP_SOUTH_1"]


  treat_redirect_as_failure = true
  validation_string         = "success"
  bypass_head_request       = true
  verify_ssl                = true

  tag {
    key    = "some_key"
    values = ["some_value"]
  }
}


resource "newrelic_synthetics_broken_links_monitor" "monitor" {
  name             = "MS-broken-links-monitor"
  uri              = "https://jsonplaceholder.typicode.com/"
  locations_public = ["AP_SOUTH_1"]
  period           = "EVERY_6_HOURS"
  status           = "ENABLED"
  tag {
    key    = "some_key"
    values = ["some_value"]
  }
}