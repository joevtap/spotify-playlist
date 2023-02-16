terraform {
  required_providers {
    spotify = {
      version = "~> 0.2.6"
      source  = "conradludgate/spotify"
    }
  }
}

provider "spotify" {
  api_key = var.spotify_api_key
}


resource "spotify_playlist" "playlist" {
  name        = "My JPOP playlist as code"
  description = "This is a \"playlist as code\" created using Terraform. Go check out the source code at https://github.com/joevtap/spotify-playlist"
  public      = true

  tracks = sort([
    "4xk70Qur2QeRmWIzWPC63V",
    "64taNX9xrRu6cYf0a0v72w",
    "3k64vNcgYPkETG7TNgpW4o",
    "2PlbwoIVr25oita35jg9ht",
    "5fjrZchMlY6acJML6B2Axn",
    "3vXdK7DCzJyp1MIh10TJFS",
    "0NlM3asfhPzhDwm5frXquS",
    "3L0rXIx0aocJrFq7AQxBKI",
    "7rMgKCnSP8CVWyB8k60nWb",
    "6CDNvw1UvFtZAKZ1miGx1Q",
    "4bMo9lJmh3jNTzfmfQ1YcL",
  ])
}
