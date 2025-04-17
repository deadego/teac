# Teac

**TODO: Add description**
## Roadmap of API Endpoints: (Tested)

### Analytics
- [ ] Extensions.get()
- [ ] Game.get()

### Bits
- [ ] Cheermotes.get()
- [ ] Extensions.get()
- [ ] Extensions.put()
- [ ] Leaderboard.get()

### ChannelPoints
- [ ] CustomRewards.get()
- [ ] CustomRewards.post()
- [ ] CustomRewards.patch()
- [ ] CustomRewards.delete()
- [ ] Redemptions.get()
- [ ] Redemptions.patch()

### Channels
- [ ] get()
- [ ] patch()
- [ ] Ads.get()
- [ ] Ads.Schedule.Snooze.post()
- [ ] Commercial.post()
- [ ] Editors.get()
- [ ] Followed.get()
- [ ] Followers.get()
- [ ] Vips.get()
- [ ] Vips.delete()

### Charity
- [ ] Campaigns.get()
- [ ] Donations.get()

### Chat
- [x] Announcements.post()
- [x] Badges.get()
- [x] Badges.Global.get()
- [ ] Chatters.get()
- [ ] Color.get()
- [ ] Color.put()
- [x] Emotes.get()
- [x] Emotes.Global.get()
- [ ] Emotes.Set.get()
- [ ] Emotes.User.get()
- [x] Messages.post()
- [ ] Settings.get()
- [ ] Settings.patch()
- [ ] Shoutouts.post()

### Clips
- [ ] get()
- [ ] post()

### ContentClassificationLabels
- [ ] get()

### Entitlements
- [ ] Drops.get()
- [ ] Drops.patch()

### EventSub
- [ ] Conduits.get()
- [ ] Conduits.post()
- [ ] Conduits.patch()
- [ ] Conduits.delete()
- [ ] Conduits.Shards.get()
- [ ] Conduits.Shards.patch()
- [ ] Subscriptions.get()
- [ ] Subscriptions.post()
- [ ] Subscriptions.delete()

### Extensions do
- [ ] get()
- [ ] Chat.post()
- [ ] Configurations.get()
- [ ] Configurations.put()
- [ ] Live.get()
- [ ] Jwt.Secrets.get()
- [ ] PubSub.post()
- [ ] Released.get()
- [ ] RequiredConfiguration.put()
- [ ] Transactions.get()

### Games do
- [ ] get()
- [ ] Top.get()

### Goals
- [ ] get()

### GuestStar
- [ ] ChannelCettings.get()
- [ ] ChannelCettings.put()
- [ ] Invites.get()
- [ ] Invites.post()
- [ ] Invites.delete()
- [ ] Session.get()
- [ ] Session.post()
- [ ] Session.delete()
- [ ] Slot.get()
- [ ] Slot.post()
- [ ] Slot.delete()
- [ ] SlotSettings.patch()

### Hypetrain
- [ ] get()

### Moderation
- [ ] Automod.Settings.get()
- [ ] Automod.Settings.put()
- [ ] Bans.post()
- [ ] Bands.delete()
- [ ] Banned.get()
- [ ] BlockedTerms.get()
- [ ] BlockedTerms.post()
- [ ] BlockedTerms.delete()
- [ ] Channels.get()
- [ ] Chat.delete()
- [ ] Snforcements.Status.post()
- [ ] Moderators.get()
- [ ] Moderators.post()
- [ ] Moderators.delete()
- [ ] ShieldMode.get()
- [ ] ShieldMode.put()
- [ ] Warnings.post()
- [ ] UnbanRequests.get()
- [ ] UnbanRequests.patch()

### Polls
- [ ] get()
- [ ] post()
- [ ] patch()

### Predictions
- [ ] get()
- [ ] post()
- [ ] patch()

### Raids
- [ ] post()
- [ ] delete()

### Schedule
- [ ] get()
- [ ] delete()
- [ ] ICalendar.get()
- [ ] Segment.post()
- [ ] Segment.patch()
- [ ] Settings.patch()

### Search
- [ ] Categories.get()
- [ ] Channels.get()

### SharedChat
- [ ] get()

### Streams
- [ ] get()
- [ ] Followed.get()
- [ ] Markers.get()
- [ ] Markers.post()
- [ ] Tags.get()

### Subscriptions
- [ ] get()
- [ ] User.get()

### Tags
- [ ] get()

### Teams
- [ ] get()
- [ ] Channel.get()

### Users
- [x] get()
- [x] put()
- [ ] Blocks.get()
- [ ] Blocks.put()
- [ ] Blocks.delete()
- [ ] Extensions.get()
- [ ] Extensions.put()
- [ ] Extensions.List.get()

### Videos
- [ ] get()
- [ ] delete()

### Whipsers
- [ ] get()


## Development

You will need the twitch cli tool.
https://dev.twitch.tv/docs/cli/

* Generate some mock data
  `twitch mock-api generate -c 6`

* Set Env Variables from mock output
  `export TWITCH_CLIENT_ID=your_client_id`
  `export TWITCH_CLIENT_SECRET=your_client_secret`
  `export TWITCH_API_URI="http://localhost:8080"`

* Start a mock twitch server.
  `twitch mock-api serve`

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `teac` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:teac, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at <https://hexdocs.pm/teac>.
