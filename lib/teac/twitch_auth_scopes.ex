defmodule Teac.TwitchAuthScopes do
  @moduledoc """
  Twitch OAuth scopes
  """

  defmodule Analytics do
    @moduledoc "Analytics related scopes"
    @read_extension "analytics:read:extensions"
    @read_game "analytics:read:games"

    @doc """
    View analytics data for the Twitch Extensions owned by the authenticated account.
    API:
      - Get Extension Analytics: https://dev.twitch.tv/docs/api/reference#get-extension-analytics
    """
    def read_extension, do: @read_extension

    @doc """
    View analytics data for the games owned by the authenticated account.
    API:
      - Get Game Analytics: https://dev.twitch.tv/docs/api/reference#get-game-analytics
    """
    def read_games, do: @read_games
  end

  defmodule Bits do
    @moduledoc "Bits and cheering related scopes"
    @read "bits:read"

    @doc """
    View Bits information for a channel.

    API:
      - Get Bits Leaderboard: https://dev.twitch.tv/docs/api/reference#get-bits-leaderboard

    EventSub:
      - Channel Bits Use: https://dev.twitch.tv/docs/eventsub/eventsub-subscription-types/#channelbitsuse
      - Channel Cheer: https://dev.twitch.tv/docs/eventsub/eventsub-subscription-types/#channelcheer
    """
    def read, do: @read
  end

  defmodule Channel do
    @moduledoc "Channel management scopes"
    @bot "channel:bot"
    @manage_ads "channel:manage:ads"
    @read_ads "channel:read:ads"
    @manage_broadcast "channel:manage:broadcast"
    @read_charity "channel:read:charity"
    @edit_commercial "channel:edit:commercial"
    @read_editors "channel:read:editors"
    @manage_extensions "channel:manage:extensions"
    @read_goals "channel:read:goals"
    @read_guest_star "channel:read:guest_star"
    @manage_guest_star "channel:manage:guest_star"
    @read_hype_train "channel:read:hype_train"
    @manage_moderators "channel:manage:moderators"
    @read_polls "channel:read:polls"
    @manage_polls "channel:manage:polls"
    @read_predictions "channel:read:predictions"
    @manage_predictions "channel:manage:predictions"
    @manage_raids "channel:manage:raids"
    @read_redemptions "channel:read:redemptions"
    @manage_redemptions "channel:manage:redemptions"
    @manage_schedule "channel:manage:schedule"
    @read_stream_key "channel:read:stream_key"
    @read_subscriptions "channel:read:subscriptions"
    @manage_videos "channel:manage:videos"
    @read_vips "channel:read:vips"
    @manage_vip "channel:manage:vips"
    @moderate "channel:moderate"

    @doc """
    Joins your channel’s chatroom as a bot user, and perform chat-related actions as that user.

    API:
    - Send Chat Message: https://dev.twitch.tv/docs/api/reference/#send-chat-message

    EventSub:
    - Channel Chat Clear: https://dev.twitch.tv/docs/eventsub/eventsub-subscription-types/#channelchatclear
    - Channel Chat Clear User Messages: https://dev.twitch.tv/docs/eventsub/eventsub-subscription-types/#channelchatclear_user_messages
    - Channel Chat Message: https://dev.twitch.tv/docs/eventsub/eventsub-subscription-types/#channelchatmessage
    - Channel Chat Message Delete: https://dev.twitch.tv/docs/eventsub/eventsub-subscription-types/#channelchatmessage_delete
    - Channel Chat Notification: https://dev.twitch.tv/docs/eventsub/eventsub-subscription-types/#channelchatnotification
    - Channel Chat Settings Update: https://dev.twitch.tv/docs/eventsub/eventsub-subscription-types/#channelchat_settingsupdate
    """

    def bot, do: @bot

    @doc """
    Manage ads schedule on a channel.

    API:
    - Snooze Next Ad https://dev.twitch.tv/docs/api/reference#snooze-next-ad
    """
    def manage_ads, do: @manage_ads

    @doc """
    Read the ads schedule and details on your channel.

    API:
    - Get Ad Schedule: https://dev.twitch.tv/docs/api/reference#get-ad-schedule

    EventSub:
    - Channel Ad Break Begin: https://dev.twitch.tv/docs/eventsub/eventsub-subscription-types/#channelad_breakbegin
    """
    def read_ads, do: @read_ads

    @doc """
    Manage a channel’s broadcast configuration, including updating channel configuration and managing stream markers and stream tags.

    API:
    - Modify Channel Information: https://dev.twitch.tv/docs/api/reference#modify-channel-information
    - Create Stream Marker: https://dev.twitch.tv/docs/api/reference#create-stream-marker
    - Replace Stream Tags: https://dev.twitch.tv/docs/api/reference#replace-stream-tags
    """
    def manage_broadcast, do: @manage_broadcast

    @doc """
    Read charity campaign details and user donations on your channel.

    API:
    - Get Charity Campaign: https://dev.twitch.tv/docs/api/reference#get-charity-campaign
    - Get Charity Campaign Donations: https://dev.twitch.tv/docs/api/reference/#get-charity-campaign-donations

    EventSub
    - Charity Donation: https://dev.twitch.tv/docs/eventsub/eventsub-subscription-types/#channelcharity_campaigndonate
    - Charity Campaign Start: https://dev.twitch.tv/docs/eventsub/eventsub-subscription-types/#channelcharity_campaignstart
    - Charity Campaign Progress: https://dev.twitch.tv/docs/eventsub/eventsub-subscription-types/#channelcharity_campaignprogress
    - Charity Campaign Stop: https://dev.twitch.tv/docs/eventsub/eventsub-subscription-types/#channelcharity_campaignstop
    """
    def read_charity, do: @read_charity

    @doc """
    Run commercials on a channel.

    API
    - Start Commercial: https://dev.twitch.tv/docs/api/reference#start-commercial
    """
    def edit_commercial, do: @edit_commercial

    @doc """
    View a list of users with the editor role for a channel.

    API:
    - Get Channel Editors: https://dev.twitch.tv/docs/api/reference#get-channel-editors
    """
    def read_editors, do: @read_editors

    @doc """
    Manage a channel’s Extension configuration, including activating Extensions.

    API:
    - Get User Active Extensions: https://dev.twitch.tv/docs/api/reference#get-user-active-extensions
    - Update User Extensions: https://dev.twitch.tv/docs/api/reference#update-user-extensions
    """
    def manage_extensions, do: @manage_extensions

    @doc """
    View Creator Goals for a channel.

    API:
    - Get Creator Goals: https://dev.twitch.tv/docs/api/reference#get-creator-goals

    EventSub:
    - Goal Begin: https://dev.twitch.tv/docs/eventsub/eventsub-subscription-types/#channelgoalbegin
    Goal Progress: https://dev.twitch.tv/docs/eventsub/eventsub-subscription-types/#channelgoalprogress
    Goal End: https://dev.twitch.tv/docs/eventsub/eventsub-subscription-types/#channelgoalend
    """
    def read_goals, do: @read_goals

    @doc """
    Read Guest Star details for your channel.

    API:
    - Get Channel Guest Star Settings: https://dev.twitch.tv/docs/api/reference#get-channel-guest-star-settings
    - Get Guest Star Session: https://dev.twitch.tv/docs/api/reference#get-guest-star-session
    - Get Guest Star Invites: https://dev.twitch.tv/docs/api/reference#get-guest-star-invites

    EventSub:
    - Channel Guest Star Session Begin: https://dev.twitch.tv/docs/eventsub/eventsub-subscription-types/#channelguest_star_sessionbegin
    - Channel Guest Star Session End: https://dev.twitch.tv/docs/eventsub/eventsub-subscription-types/#channelguest_star_sessionend
    - Channel Guest Star Guest Update: https://dev.twitch.tv/docs/eventsub/eventsub-subscription-types/#channelguest_star_guestupdate
    - Channel Guest Star Settings Update: https://dev.twitch.tv/docs/eventsub/eventsub-subscription-types/#channelguest_star_settingsupdate
    """
    def read_guest_star, do: @read_guest_star

    @doc """
    Manage Guest Star for your channel.

    API:
    - Update Channel Guest Star Settings: https://dev.twitch.tv/docs/api/reference#update-channel-guest-star-settings
    - Create Guest Star Session: https://dev.twitch.tv/docs/api/reference#create-guest-star-session
    - End Guest Star Session: https://dev.twitch.tv/docs/api/reference#end-guest-star-session
    - Send Guest Star Invite: https://dev.twitch.tv/docs/api/reference#send-guest-star-invite
    - Delete Guest Star Invite: https://dev.twitch.tv/docs/api/reference#delete-guest-star-invite
    - Assign Guest Star Slot: https://dev.twitch.tv/docs/api/reference#assign-guest-star-slot
    - Update Guest Star Slot: https://dev.twitch.tv/docs/api/reference#update-guest-star-slot
    - Delete Guest Star Slot: https://dev.twitch.tv/docs/api/reference#delete-guest-star-slot
    - Update Guest Star Slot Settings: https://dev.twitch.tv/docs/api/reference#update-guest-star-slot-settings

    EventSub:
    - Channel Guest Star Session Begin: https://dev.twitch.tv/docs/eventsub/eventsub-subscription-types/#channelguest_star_sessionbegin
    - Channel Guest Star Session End: https://dev.twitch.tv/docs/eventsub/eventsub-subscription-types/#channelguest_star_sessionend
    - Channel Guest Star Guest Update: https://dev.twitch.tv/docs/eventsub/eventsub-subscription-types/#channelguest_star_guestupdate
    - Channel Guest Star Settings Update: https://dev.twitch.tv/docs/eventsub/eventsub-subscription-types/#channelguest_star_settingsupdate
    """
    def manage_guest_star, do: @manage_guest_star

    @doc """
    View Hype Train information for a channel.

    API:
    - Get Hype Train Events: https://dev.twitch.tv/docs/api/reference#get-hype-train-events

    EventSub:
    - Hype Train Begin: https://dev.twitch.tv/docs/eventsub/eventsub-subscription-types/#channelhype_trainbegin
    - Hype Train Progress: https://dev.twitch.tv/docs/eventsub/eventsub-subscription-types/#channelhype_trainprogress
    - Hype Train End: https://dev.twitch.tv/docs/eventsub/eventsub-subscription-types/#channelhype_trainend
    """
    def read_hype_train, do: @read_hype_train

    @doc """
    Add or remove the moderator role from users in your channel.

    API:
    - Add Channel Moderator: https://dev.twitch.tv/docs/api/reference#add-channel-moderator
    - Remove Channel Moderator: https://dev.twitch.tv/docs/api/reference#remove-channel-moderator
    - Get Moderators: https://dev.twitch.tv/docs/api/reference/#get-moderators
    """
    def manage_moderators, do: @manage_moderators

    @doc """
    View a channel’s polls.

    API:
    - Get Polls: https://dev.twitch.tv/docs/api/reference#get-polls

    EventSub:
    - Channel Poll Begin: https://dev.twitch.tv/docs/eventsub/eventsub-subscription-types/#channelpollbegin
    - Channel Poll Progress: https://dev.twitch.tv/docs/eventsub/eventsub-subscription-types/#channelpollprogress
    - Channel Poll End: https://dev.twitch.tv/docs/eventsub/eventsub-subscription-types/#channelpollend
    """
    def read_polls, do: @read_polls

    @doc """
    Manage a channel’s polls.

    API:
    - Get Polls: https://dev.twitch.tv/docs/api/reference#get-polls
    - Create Poll: https://dev.twitch.tv/docs/api/reference#create-poll
    - End Poll: https://dev.twitch.tv/docs/api/reference#end-poll

    EventSub:
    - Channel Poll Begin: https://dev.twitch.tv/docs/eventsub/eventsub-subscription-types/#channelpollbegin
    - Channel Poll Progress: https://dev.twitch.tv/docs/eventsub/eventsub-subscription-types/#channelpollprogress
    - Channel Poll End: https://dev.twitch.tv/docs/eventsub/eventsub-subscription-types/#channelpollend
    """
    def manage_polls, do: @manage_polls

    @doc """
    View a channel’s Channel Points Predictions.

    API:
    - Get Channel Points Predictions: https://dev.twitch.tv/docs/api/reference#get-predictions

    EventSub:
    - Channel Prediction Begin: https://dev.twitch.tv/docs/eventsub/eventsub-subscription-types/#channelpredictionbegin
    - Channel Prediction Progress: https://dev.twitch.tv/docs/eventsub/eventsub-subscription-types/#channelpredictionprogress
    - Channel Prediction Lock: https://dev.twitch.tv/docs/eventsub/eventsub-subscription-types/#channelpredictionlock
    - Channel Prediction End: https://dev.twitch.tv/docs/eventsub/eventsub-subscription-types/#channelpredictionend
    """
    def read_predictions, do: @read_predictions

    @doc """
    Manage of channel’s Channel Points Predictions

    API:
    - Get Channel Points Predictions: https://dev.twitch.tv/docs/api/reference#get-predictions
    - Create Channel Points Prediction: https://dev.twitch.tv/docs/api/reference#create-prediction
    - End Channel Points Prediction: https://dev.twitch.tv/docs/api/reference#end-prediction

    EventSub:
    - Channel Prediction Begin: https://dev.twitch.tv/docs/eventsub/eventsub-subscription-types/#channelpredictionbegin
    - Channel Prediction Progress: https://dev.twitch.tv/docs/eventsub/eventsub-subscription-types/#channelpredictionprogress
    - Channel Prediction Lock: https://dev.twitch.tv/docs/eventsub/eventsub-subscription-types/#channelpredictionlock
    - Channel Prediction End: https://dev.twitch.tv/docs/eventsub/eventsub-subscription-types/#channelpredictionend
    """
    def manage_predictions, do: @manage_predictions

    @doc """
    Manage a channel raiding another channel.

    API:
    - Start a raid: https://dev.twitch.tv/docs/api/reference#start-a-raid
    - Cancel a raid: https://dev.twitch.tv/docs/api/reference#cancel-a-raid
    """
    def manage_raids, do: @manage_raids

    @doc """
    View Channel Points custom rewards and their redemptions on a channel.

    API:
    - Get Custom Reward: https://dev.twitch.tv/docs/api/reference#get-custom-reward
    - Get Custom Reward Redemption: https://dev.twitch.tv/docs/api/reference#get-custom-reward-redemption

    EventSub:
    - Channel Points Automatic Reward Redemption: https://dev.twitch.tv/docs/eventsub/eventsub-subscription-types/#channelchannel_points_automatic_reward_redemptionadd
    - Channel Points Automatic Reward Redemption v2: https://dev.twitch.tv/docs/eventsub/eventsub-subscription-types/#channelchannel_points_automatic_reward_redemptionadd-v2
    - Channel Points Custom Reward Add: https://dev.twitch.tv/docs/eventsub/eventsub-subscription-types/#channelchannel_points_custom_rewardadd
    - Channel Points Custom Reward Update: https://dev.twitch.tv/docs/eventsub/eventsub-subscription-types/#channelchannel_points_custom_rewardupdate
    - Channel Points Custom Reward Remove: https://dev.twitch.tv/docs/eventsub/eventsub-subscription-types/#channelchannel_points_custom_rewardremove
    - Channel Points Custom Reward Redemption Add: https://dev.twitch.tv/docs/eventsub/eventsub-subscription-types/#channelchannel_points_custom_reward_redemptionadd
    - Channel Points Custom Reward Redemption Update: https://dev.twitch.tv/docs/eventsub/eventsub-subscription-types/#channelchannel_points_custom_reward_redemptionupdate
    """
    def read_redemptions, do: @read_redemptions

    @doc """
    Manage Channel Points custom rewards and their redemptions on a channel.

    API:
    - Get Custom Reward: https://dev.twitch.tv/docs/api/reference#get-custom-reward
    - Get Custom Reward Redemption: https://dev.twitch.tv/docs/api/reference#get-custom-reward-redemption
    - Create Custom Rewards: https://dev.twitch.tv/docs/api/reference#create-custom-rewards
    - Delete Custom Reward: https://dev.twitch.tv/docs/api/reference#delete-custom-reward
    - Update Custom Reward: https://dev.twitch.tv/docs/api/reference#update-custom-reward
    - Update Redemption Status: https://dev.twitch.tv/docs/api/reference#update-redemption-status

    EventSub:
    - Channel Points Automatic Reward Redemption: https://dev.twitch.tv/docs/eventsub/eventsub-subscription-types/#channelchannel_points_automatic_reward_redemptionadd
    - Channel Points Custom Reward Add: https://dev.twitch.tv/docs/eventsub/eventsub-subscription-types/#channelchannel_points_custom_rewardadd
    - Channel Points Custom Reward Update: https://dev.twitch.tv/docs/eventsub/eventsub-subscription-types/#channelchannel_points_custom_rewardupdate
    - Channel Points Custom Reward Remove: https://dev.twitch.tv/docs/eventsub/eventsub-subscription-types/#channelchannel_points_custom_rewardremove
    - Channel Points Custom Reward Redemption Add: https://dev.twitch.tv/docs/eventsub/eventsub-subscription-types/#channelchannel_points_custom_reward_redemptionadd
    - Channel Points Custom Reward Redemption Update: https://dev.twitch.tv/docs/eventsub/eventsub-subscription-types/#channelchannel_points_custom_reward_redemptionupdate
    """
    def manage_redemptions, do: @manage_redemptions

    @doc """
    Manage a channel’s stream schedule.

    API:
    - Update Channel Stream Schedule: https://dev.twitch.tv/docs/api/reference#update-channel-stream-schedule
    - Create Channel Stream Schedule Segment: https://dev.twitch.tv/docs/api/reference#create-channel-stream-schedule-segment
    - Update Channel Stream Schedule Segment: https://dev.twitch.tv/docs/api/reference#update-channel-stream-schedule-segment
    - Delete Channel Stream Schedule Segment: https://dev.twitch.tv/docs/api/reference#delete-channel-stream-schedule-segment
    """
    def manage_schedule, do: @manage_schedule

    @doc """
    View an authorized user’s stream key.

    API:
    - Get Stream Key: https://dev.twitch.tv/docs/api/reference#get-stream-key
    """
    def read_stream_key, do: @read_stream_key

    @doc """
    View a list of all subscribers to a channel and check if a user is subscribed to a channel.

    API:
    - Get Broadcaster Subscriptions: https://dev.twitch.tv/docs/api/reference#get-broadcaster-subscriptions

    EventSub:
    - Channel Subscribe: https://dev.twitch.tv/docs/eventsub/eventsub-subscription-types/#channelsubscribe
    - Channel Subscription End: https://dev.twitch.tv/docs/eventsub/eventsub-subscription-types/#channelsubscriptionend
    - Channel Subscription Gift: https://dev.twitch.tv/docs/eventsub/eventsub-subscription-types/#channelsubscriptiongift
    - Channel Subscription Message: https://dev.twitch.tv/docs/eventsub/eventsub-subscription-types/#channelsubscriptionmessage
    """
    def read_subscriptions, do: @read_subscriptions

    @doc """
    Manage a channel’s videos, including deleting videos.

    API:
    - Delete Videos: https://dev.twitch.tv/docs/api/reference#delete-videos
    """
    def manage_videos, do: @manage_videos

    @doc """
    Read the list of VIPs in your channel.

    API:
    - Get VIPs: https://dev.twitch.tv/docs/api/reference#get-vips

    EventSub:
    - Channel VIP Add: https://dev.twitch.tv/docs/eventsub/eventsub-subscription-types/#channelvipadd
    - Channel VIP Remove: https://dev.twitch.tv/docs/eventsub/eventsub-subscription-types/#channelvipremove
    """
    def read_vips, do: @read_vips

    @doc """
    Add or remove the VIP role from users in your channel.

    API:
    - Get VIPs: https://dev.twitch.tv/docs/api/reference#get-vips
    - Add Channel VIP: https://dev.twitch.tv/docs/api/reference#add-channel-vip
    - Remove Channel VIP: https://dev.twitch.tv/docs/api/reference#remove-channel-vip

    EventSub:
    - Channel VIP Add: https://dev.twitch.tv/docs/eventsub/eventsub-subscription-types/#channelvipadd
    - Channel VIP Remove: https://dev.twitch.tv/docs/eventsub/eventsub-subscription-types/#channelvipremove
    """
    def manage_vip, do: @manage_vip

    @doc """
    Perform moderation actions in a channel.

    EventSub:
    - Channel Ban: https://dev.twitch.tv/docs/eventsub/eventsub-subscription-types/#channelban
    - Channel Unban: https://dev.twitch.tv/docs/eventsub/eventsub-subscription-types/#channelunban
    """
    def moderate, do: @moderate
  end

  defmodule Clips do
    @moduledoc "Clip management scopes"
    @edit "clips:edit"

    @doc """
    Manage Clips for a channel.

    API:
    - Create Clip: https://dev.twitch.tv/docs/api/reference#create-clip
    """
    def edit, do: @edit
  end

  defmodule Moderation do
    @moduledoc "Moderation scopes"
    @read "moderation:read"
    @manage_announcements "moderator:manage:announcements"
    @manage_automod "moderator:manage:automod"
    @read_automod_settings "moderator:read:automod_settings"
    @manage_automod_settings "moderator:manage:automod_settings"
    @read_banned_users "moderator:read:banned_users"
    @manage_banned_users "moderator:manage:banned_users"
    @read_blocked_terms "moderator:read:blocked_terms"
    @read_chat_messages "moderator:read:chat_messages"
    @manage_blocked_terms "moderator:manage:blocked_terms"
    @manage_chat_messages "moderator:manage:chat_messages"
    @read_chat_settings "moderator:read:chat_settings"
    @manage_chat_settings "moderator:manage:chat_settings"
    @read_chatters "moderator:read:chatters"
    @read_followers "moderator:read:followers"
    @read_guest_star "moderator:read:guest_star"
    @manage_guest_star "moderator:manage:guest_star"
    @read_moderators "moderator:read:moderators"
    @read_shield_mode "moderator:read:shield_mode"
    @manage_shield_mode "moderator:manage:shield_mode"
    @read_shoutouts "moderator:read:shoutouts"
    @manage_shoutouts "moderator:manage:shoutouts"
    @read_suspicious_users "moderator:read:suspicious_users"
    @read_unban_requests "moderator:read:unban_requests"
    @manage_unban_requests "moderator:manage:unban_requests"
    @read_vips "moderator:read:vips"
    @read_warnings "moderator:read:warnings"
    @manage_warnings "moderator:manage:warnings"

    @doc """
    View a channel’s moderation data including Moderators, Bans, Timeouts, and Automod settings.

    API:
    - Check AutoMod Status: https://dev.twitch.tv/docs/api/reference#check-automod-status
    - Get Banned Users: https://dev.twitch.tv/docs/api/reference#get-banned-users
    - Get Moderators: https://dev.twitch.tv/docs/api/reference#get-moderators

    EventSub:
    - Channel Moderator Add: https://dev.twitch.tv/docs/eventsub/eventsub-subscription-types/#channelmoderatoradd
    - Channel Moderator Remove: https://dev.twitch.tv/docs/eventsub/eventsub-subscription-types/#channelmoderatorremove
    """
    def read, do: @read

    @doc """
    Send announcements in channels where you have the moderator role.

    API:
    - Send Chat Announcement: https://dev.twitch.tv/docs/api/reference#send-chat-announcement
    """
    def manage_announcements, do: @manage_announcements

    @doc """
    Manage messages held for review by AutoMod in channels where you are a moderator.

    API:
    - Manage Held AutoMod Messages: https://dev.twitch.tv/docs/api/reference#manage-held-automod-messages

    EventSub:
    - AutoMod Message Hold: https://dev.twitch.tv/docs/eventsub/eventsub-subscription-types/#automodmessagehold
    - AutoMod Message Hold v2: https://dev.twitch.tv/docs/eventsub/eventsub-subscription-types/#automodmessagehold-v2
    - AutoMod Message Update: https://dev.twitch.tv/docs/eventsub/eventsub-subscription-types/#automodmessageupdate
    - AutoMod Message Update v2: https://dev.twitch.tv/docs/eventsub/eventsub-subscription-types/#automodmessageupdate-v2
    - AutoMod Terms Update: https://dev.twitch.tv/docs/authentication/eventsub/eventsub-subscription-types/#automodtermsupdate
    """
    def manage_automod, do: @manage_automod

    @doc """
    View a broadcaster’s AutoMod settings.

    API:
    - Get AutoMod Settings: https://dev.twitch.tv/docs/api/reference#get-automod-settings

    EventSub:
    - AutoMod Settings Update: https://dev.twitch.tv/docs/eventsub/eventsub-subscription-types/#automodsettingsupdate
    """
    def read_automod_settings, do: @read_automod_settings

    @doc """
    Manage a broadcaster’s AutoMod settings.

    API:
    - Update AutoMod Settings: https://dev.twitch.tv/docs/api/reference#update-automod-settings
    """
    def manage_automod_settings, do: @manage_automod_settings

    @doc """
    Read the list of bans or unbans in channels where you have the moderator role.

    EventSub:
    - Channel Moderate: https://dev.twitch.tv/docs/eventsub/eventsub-subscription-types/#channelmoderate
    - Channel Moderate v2: https://dev.twitch.tv/docs/eventsub/eventsub-subscription-types/#channelmoderate-v2
    """
    def read_banned_users, do: @read_banned_users

    @doc """
    Ban and unban users.

    API:
    - Get Banned Users: https://dev.twitch.tv/docs/api/reference/#get-banned-users
    - Ban User: https://dev.twitch.tv/docs/api/reference#ban-user
    - Unban User: https://dev.twitch.tv/docs/api/reference#unban-user

    EventSub:
    - Channel Moderate: https://dev.twitch.tv/docs/eventsub/eventsub-subscription-types/#channelmoderate
    - Channel Moderate v2: https://dev.twitch.tv/docs/eventsub/eventsub-subscription-types/#channelmoderate-v2
    """
    def manage_banned_users, do: @manage_banned_users

    @doc """
    View a broadcaster’s list of blocked terms.

    API:
    - Get Blocked Terms: https://dev.twitch.tv/docs/api/reference#get-blocked-terms

    EventSub:
    - Channel Moderate: https://dev.twitch.tv/docs/eventsub/eventsub-subscription-types/#channelmoderate
    """
    def read_blocked_terms, do: @read_blocked_terms

    @doc """
    Read deleted chat messages in channels where you have the moderator role.

    EventSub:
    - Channel Moderate: https://dev.twitch.tv/docs/eventsub/eventsub-subscription-types/#channelmoderate
    """
    def read_chat_messages, do: @read_chat_messages

    @doc """
    Manage a broadcaster’s list of blocked terms.

    API:
    - Get Blocked Terms: https://dev.twitch.tv/docs/api/reference#get-blocked-terms
    - Add Blocked Term: https://dev.twitch.tv/docs/api/reference#add-blocked-term
    - Remove Blocked Term: https://dev.twitch.tv/docs/api/reference#remove-blocked-term

    EventSub:
    - Channel Moderate: https://dev.twitch.tv/docs/eventsub/eventsub-subscription-types/#channelmoderate
    """
    def manage_blocked_terms, do: @manage_blocked_terms

    @doc """
    Delete chat messages in channels where you have the moderator role

    API:
    - Delete Chat Messages: https://dev.twitch.tv/docs/api/reference#delete-chat-messages

    EventSub:
    - Channel Moderate: https://dev.twitch.tv/docs/eventsub/eventsub-subscription-types/#channelmoderate
    """
    def manage_chat_messages, do: @manage_chat_messages

    @doc """
    View a broadcaster’s chat room settings.

    API:
    - Get Chat Settings: https://dev.twitch.tv/docs/api/reference#get-chat-settings

    EventSub:
    - Channel Moderate: https://dev.twitch.tv/docs/eventsub/eventsub-subscription-types/#channelmoderate
    """
    def read_chat_settings, do: @read_chat_settings

    @doc """
    Manage a broadcaster’s chat room settings.

    API:
    - Update Chat Settings: https://dev.twitch.tv/docs/api/reference#update-chat-settings

    EventSub:
    - Channel Moderate: https://dev.twitch.tv/docs/eventsub/eventsub-subscription-types/#channelmoderate
    """
    def manage_chat_settings, do: @manage_chat_settings

    @doc """
    View the chatters in a broadcaster’s chat room.

    API:
    - Get Chatters: https://dev.twitch.tv/docs/api/reference#get-chatters
    """
    def read_chatters, do: @read_chatters

    @doc """
    Read the followers of a broadcaster.

    API:
    - Get Channel Followers: https://dev.twitch.tv/docs/api/reference#get-channel-followers

    EventSub:
    - Channel Follow: https://dev.twitch.tv/docs/eventsub/eventsub-subscription-types/#channelfollow
    """
    def read_followers, do: @read_followers

    @doc """
    Read Guest Star details for channels where you are a Guest Star moderator.

    API:
    - Get Channel Guest Star Settings: https://dev.twitch.tv/docs/api/reference#get-channel-guest-star-settings
    - Get Guest Star Session: https://dev.twitch.tv/docs/api/reference#get-guest-star-session
    - Get Guest Star Invites: https://dev.twitch.tv/docs/api/reference#get-guest-star-invites

    EventSub:
    - Channel Guest Star Session Begin: https://dev.twitch.tv/docs/eventsub/eventsub-subscription-types/#channelguest_star_sessionbegin
    - Channel Guest Star Session End: https://dev.twitch.tv/docs/eventsub/eventsub-subscription-types/#channelguest_star_sessionend
    - Channel Guest Star Guest Update: https://dev.twitch.tv/docs/eventsub/eventsub-subscription-types/#channelguest_star_guestupdate
    - Channel Guest Star Settings Update: https://dev.twitch.tv/docs/eventsub/eventsub-subscription-types/#channelguest_star_settingsupdate
    """
    def read_guest_star, do: @read_guest_star

    @doc """
    Manage Guest Star for channels where you are a Guest Star moderator.

    API:
    - Send Guest Star Invite: https://dev.twitch.tv/docs/api/reference#send-guest-star-invite
    - Delete Guest Star Invite: https://dev.twitch.tv/docs/api/reference#delete-guest-star-invite
    - Assign Guest Star Slot: https://dev.twitch.tv/docs/api/reference#assign-guest-star-slot
    - Update Guest Star Slot: https://dev.twitch.tv/docs/api/reference#update-guest-star-slot
    - Delete Guest Star Slot: https://dev.twitch.tv/docs/api/reference#delete-guest-star-slot
    - Update Guest Star Slot Settings: https://dev.twitch.tv/docs/api/reference#update-guest-star-slot-settings

    EventSub:
    - Channel Guest Star Session Begin: https://dev.twitch.tv/docs/eventsub/eventsub-subscription-types/#channelguest_star_sessionbegin
    - Channel Guest Star Session End: https://dev.twitch.tv/docs/eventsub/eventsub-subscription-types/#channelguest_star_sessionend
    - Channel Guest Star Guest Update: https://dev.twitch.tv/docs/eventsub/eventsub-subscription-types/#channelguest_star_guestupdate
    - Channel Guest Star Settings Update: https://dev.twitch.tv/docs/eventsub/eventsub-subscription-types/#channelguest_star_settingsupdate
    """
    def manage_guest_star, do: @manage_guest_star

    @doc """
    Read the list of moderators in channels where you have the moderator role.

    EventSub:
    - Channel Moderate: https://dev.twitch.tv/docs/eventsub/eventsub-subscription-types/#channelmoderate
    - Channel Moderate v2: https://dev.twitch.tv/docs/eventsub/eventsub-subscription-types/#channelmoderate-v2
    """
    def read_moderators, do: @read_moderators

    @doc """
    View a broadcaster’s Shield Mode status.

    API:
    - Get Shield Mode Status: https://dev.twitch.tv/docs/api/reference#update-shield-mode-status

    EventSub:
    - Shield Mode Begin: https://dev.twitch.tv/docs/eventsub/eventsub-subscription-types/#channelshield_modebegin
    - Shield Mode End: https://dev.twitch.tv/docs/eventsub/eventsub-subscription-types/#channelshield_modeend
    """
    def read_shield_mode, do: @read_shield_mode

    @doc """
    Manage a broadcaster’s Shield Mode status.

    API:
    - Update Shield Mode Status: https://dev.twitch.tv/docs/api/reference#update-shield-mode-status

    EventSub:
    - Shield Mode Begin: https://dev.twitch.tv/docs/eventsub/eventsub-subscription-types/#channelshield_modebegin
    - Shield Mode End: https://dev.twitch.tv/docs/eventsub/eventsub-subscription-types/#channelshield_modeend
    """
    def manage_shield_mode, do: @manage_shield_mode

    @doc """
    View a broadcaster’s shoutouts.

    EventSub:
    - Shoutout Create: https://dev.twitch.tv/docs/eventsub/eventsub-subscription-types/#channelshoutoutcreate
    - Shoutout Received: https://dev.twitch.tv/docs/eventsub/eventsub-subscription-types/#channelshoutoutreceive
    """
    def read_shoutouts, do: @read_shoutouts

    @doc """
    Manage a broadcaster’s shoutouts.

    API:
    - Send a Shoutout: https://dev.twitch.tv/docs/api/reference#send-a-shoutout

    EventSub:
    - Shoutout Create: https://dev.twitch.tv/docs/eventsub/eventsub-subscription-types/#channelshoutoutcreate
    - Shoutout Received: https://dev.twitch.tv/docs/eventsub/eventsub-subscription-types/#channelshoutoutreceive
    """
    def manage_shoutouts, do: @manage_shoutouts

    @doc """
    Read chat messages from suspicious users and see users flagged as suspicious in channels where you have the moderator role.

    EventSub:
    - Channel Suspicious User Message: https://dev.twitch.tv/docs/eventsub/eventsub-subscription-types/#channelsuspicious_usermessage
    - Channel Suspicious User Update: https://dev.twitch.tv/docs/eventsub/eventsub-subscription-types/#channelsuspicious_userupdate
    """
    def read_suspicious_users, do: @read_suspicious_users

    @doc """
    View a broadcaster’s unban requests.

    API:
    - Get Unban Requests: https://dev.twitch.tv/docs/api/reference/#get-unban-requests

    EventSub:
    - Channel Unban Request Create: https://dev.twitch.tv/docs/eventsub/eventsub-subscription-types/#channelunban_requestcreate
    - Channel Unban Request Resolve: https://dev.twitch.tv/docs/eventsub/eventsub-subscription-types/#channelunban_requestresolve
    - Channel Moderate: https://dev.twitch.tv/docs/eventsub/eventsub-subscription-types/#channelmoderate
    """
    def read_unban_requests, do: @read_unban_requests

    @doc """
    Manage a broadcaster’s unban requests.

    API:
    - Resolve Unban Requests: https://dev.twitch.tv/docs/api/reference/#resolve-unban-requests

    EventSub:
    - Channel Unban Request Create: https://dev.twitch.tv/docs/eventsub/eventsub-subscription-types/#channelunban_requestcreate
    - Channel Unban Request Resolve: https://dev.twitch.tv/docs/eventsub/eventsub-subscription-types/#channelunban_requestresolve
    - Channel Moderate: https://dev.twitch.tv/docs/eventsub/eventsub-subscription-types/#channelmoderate
    """
    def manage_unban_requests, do: @manage_unban_requests

    @doc """
    Read the list of VIPs in channels where you have the moderator role.

    EventSub:
    - Channel Moderate: https://dev.twitch.tv/docs/eventsub/eventsub-subscription-types/#channelmoderate
    - Channel Moderate v2: https://dev.twitch.tv/docs/eventsub/eventsub-subscription-types/#channelmoderate-v2
    """
    def read_vips, do: @read_vips

    @doc """
    Read warnings in channels where you have the moderator role.

    EventSub:
    - Channel Moderate v2: https://dev.twitch.tv/docs/eventsub/eventsub-subscription-types/#channelmoderate-v2
    - Channel Warning Acknowledge: https://dev.twitch.tv/docs/eventsub/eventsub-subscription-types/#channelwarningacknowledge
    - Channel Warning Send: https://dev.twitch.tv/docs/eventsub/eventsub-subscription-types/#channelwarningsend
    """
    def read_warnings, do: @read_warnings

    @doc """
    Warn users in channels where you have the moderator role.

    API:
    - Warn Chat User: https://dev.twitch.tv/docs/api/reference#warn-chat-user

    EventSub:
    - Channel Moderate v2: https://dev.twitch.tv/docs/eventsub/eventsub-subscription-types/#channelmoderate-v2
    - Channel Warning Acknowledge: https://dev.twitch.tv/docs/eventsub/eventsub-subscription-types/#channelwarningacknowledge
    - Channel Warning Send: https://dev.twitch.tv/docs/eventsub/eventsub-subscription-types/#channelwarningsend
    """
    def manage_warnings, do: @manage_warnings
  end

  defmodule User do
    @moduledoc "User scopes"

    @bot "user:bot"
    @edit "user:edit"
    @edit_broadcast "user:edit:broadcast"
    @read_blocked_users "user:read:blocked_users"
    @manage_blocked_users "user:manage:blocked_users"
    @read_broadcast "user:read:broadcast"
    @read_chat "user:read:chat"
    @manage_chat_color "user:manage:chat_color"
    @read_email "user:read:email"
    @read_emotes "user:read:emotes"
    @read_follows "user:read:follows"
    @read_moderated_channels "user:read:moderated_channels"
    @read_subscriptions "user:read:subscriptions"
    @read_whispers "user:read:whispers"
    @manage_whispers "user:manage:whispers"
    @write_chat "user:write:chat"

    @doc """
    Join a specified chat channel as your user and appear as a bot, and perform chat-related actions as your user.

    API:
    - Send Chat Message: https://dev.twitch.tv/docs/api/reference/#send-chat-message

    EventSub:
    - Channel Chat Clear: https://dev.twitch.tv/docs/eventsub/eventsub-subscription-types/#channelchatclear
    - Channel Chat Clear User Messages: https://dev.twitch.tv/docs/eventsub/eventsub-subscription-types/#channelchatclear_user_messages
    - Channel Chat Message: https://dev.twitch.tv/docs/eventsub/eventsub-subscription-types/#channelchatmessage
    - Channel Chat Message Delete: https://dev.twitch.tv/docs/eventsub/eventsub-subscription-types/#channelchatmessage_delete
    - Channel Chat Notification: https://dev.twitch.tv/docs/eventsub/eventsub-subscription-types/#channelchatnotification
    - Channel Chat Settings Update: https://dev.twitch.tv/docs/eventsub/eventsub-subscription-types/#channelchat_settingsupdate
    - Channel Chat User Message Hold: https://dev.twitch.tv/docs/eventsub/eventsub-subscription-types/#channelchat_user_message_hold
    - Channel Chat User Message Update: https://dev.twitch.tv/docs/eventsub/eventsub-subscription-types/#channelchatuser_message_update
    """
    def bot, do: @bot

    @doc """
    user:edit 	Manage a user object.

    API:
    - Update User: https://dev.twitch.tv/docs/api/reference#update-user
    """
    def edit, do: @edit

    @doc """
    View and edit a user’s broadcasting configuration, including Extension configurations.

    API:
    - Get User Extensions: https://dev.twitch.tv/docs/api/reference/#get-user-extensions
    - Get User Active Extensions: https://dev.twitch.tv/docs/api/reference/#get-user-active-extensions
    - Update User Extensions: https://dev.twitch.tv/docs/api/reference/#update-user-extensions
    """
    def edit_broadcast, do: @edit_broadcast

    @doc """
    View the block list of a user.

    API:
    - Get User Block List: https://dev.twitch.tv/docs/api/reference#get-user-block-list
    """
    def read_blocked_users, do: @read_blocked_users

    @doc """
    Manage the block list of a user.

    API:
    - Block User: https://dev.twitch.tv/docs/api/reference#block-user
    - Unblock User: https://dev.twitch.tv/docs/api/reference#unblock-user
    """
    def manage_blocked_users, do: @manage_blocked_users

    @doc """
    View a user’s broadcasting configuration, including Extension configurations.

    API:
    - Get Stream Markers: https://dev.twitch.tv/docs/api/reference#get-stream-markers
    - Get User Extensions: https://dev.twitch.tv/docs/api/reference#get-user-extensions
    - Get User Active Extensions: https://dev.twitch.tv/docs/api/reference#get-user-active-extensions
    """
    def read_broadcast, do: @read_broadcast

    @doc """
    Receive chatroom messages and informational notifications relating to a channel’s chatroom.

    EventSub:
    - Channel Chat Clear: https://dev.twitch.tv/docs/eventsub/eventsub-subscription-types/#channelchatclear
    - Channel Chat Clear User Messages: https://dev.twitch.tv/docs/eventsub/eventsub-subscription-types/#channelchatclear_user_messages
    - Channel Chat Message: https://dev.twitch.tv/docs/eventsub/eventsub-subscription-types/#channelchatclear_user_messages
    - Channel Chat Message Delete: https://dev.twitch.tv/docs/eventsub/eventsub-subscription-types/#channelchatmessage_delete
    - Channel Chat Notification: https://dev.twitch.tv/docs/eventsub/eventsub-subscription-types/#channelchatnotification
    - Channel Chat Settings Update: https://dev.twitch.tv/docs/eventsub/eventsub-subscription-types/#channelchat_settingsupdate
    - Channel Chat User Message Hold: https://dev.twitch.tv/docs/eventsub/eventsub-subscription-types/#channelchatuser_message_hold
    - Channel Chat User Message Update: https://dev.twitch.tv/docs/eventsub/eventsub-subscription-types/#channelchatuser_message_update

    """
    def read_chat, do: @read_chat

    @doc """
    Update the color used for the user’s name in chat.

    API:
    - Update User Chat Color: https://dev.twitch.tv/docs/api/reference#update-user-chat-color
    """
    def manage_chat_color, do: @manage_chat_color

    @doc """
    View a user’s email address.

    API:
    - Get Users (optional): https://dev.twitch.tv/docs/api/reference#get-users
    - Update User (optional): https://dev.twitch.tv/docs/api/reference/#update-user

    EventSub:
    - User Update (optional): https://dev.twitch.tv/docs/eventsub/eventsub-subscription-types/#userupdate
    """
    def read_email, do: @read_email

    @doc """
    View emotes available to a user

    API:
    - Get User Emotes: https://dev.twitch.tv/docs/api/reference/#get-user-emotes
    """
    def read_emotes, do: @read_emotes

    @doc """
    View the list of channels a user follows.

    API:
    - Get Followed Channels: https://dev.twitch.tv/docs/api/reference#get-followed-channels
    - Get Followed Streams: https://dev.twitch.tv/docs/api/reference#get-followed-streams
    """
    def read_follows, do: @read_follows

    @doc """
    Read the list of channels you have moderator privileges in.

    API:
    - Get Moderated Channels: https://dev.twitch.tv/docs/api/reference#get-moderated-channels
    """
    def read_moderated_channels, do: @read_moderated_channels

    @doc """
    View if an authorized user is subscribed to specific channels.

    API:
    - Check User Subscription: https://dev.twitch.tv/docs/api/reference#check-user-subscription
    """
    def read_subscriptions, do: @read_subscriptions

    @doc """
    Receive whispers sent to your user.

    EventSub:
    - Whisper Received: https://dev.twitch.tv/docs/eventsub/eventsub-subscription-types/#userwhispermessage
    """
    def read_whispers, do: @read_whispers

    @doc """
    Receive whispers sent to your user, and send whispers on your user’s behalf.

    API:
    - Send Whisper: https://dev.twitch.tv/docs/api/reference#send-whisper

    EventSub:
    - Whisper Received: https://dev.twitch.tv/docs/eventsub/eventsub-subscription-types/#userwhispermessage
    """
    def manage_whispers, do: @manage_whispers

    @doc """
    Send chat messages to a chatroom.

    API:
    - Send Chat Message: https://dev.twitch.tv/docs/api/reference/#send-chat-message
    """
    def write_chat, do: @write_chat
  end

  # Dynamic lookup map
  @scope_map %{
    # Analytics
    analytics_read_extensions: __MODULE__.Analytics.read_extension(),
    analytics_read_games: __MODULE__.Analytics.read_games(),
    # Bits
    bits_read: __MODULE__.Bits.read(),
    # Channel
    channel_bot: __MODULE__.Channel.bot(),
    channel_manage_ads: __MODULE__.Channel.manage_ads(),
    channel_read_ads: __MODULE__.Channel.read_ads(),
    channel_manage_broadcast: __MODULE__.Channel.manage_broadcast(),
    channel_read_charity: __MODULE__.Channel.read_charity(),
    channel_edit_commercial: __MODULE__.Channel.edit_commercial(),
    channel_read_editors: __MODULE__.Channel.read_editors(),
    channel_manage_extensions: __MODULE__.Channel.manage_extensions(),
    channel_read_goals: __MODULE__.Channel.read_goals(),
    channel_read_guest_star: __MODULE__.Channel.read_guest_star(),
    channel_manage_guest_star: __MODULE__.Channel.manage_guest_star(),
    channel_read_hype_train: __MODULE__.Channel.read_hype_train(),
    channel_manage_moderators: __MODULE__.Channel.manage_moderators(),
    channel_read_polls: __MODULE__.Channel.read_polls(),
    channel_manage_polls: __MODULE__.Channel.manage_polls(),
    channel_read_predictions: __MODULE__.Channel.read_predictions(),
    channel_manage_predictions: __MODULE__.Channel.manage_predictions(),
    channel_manage_raids: __MODULE__.Channel.manage_raids(),
    channel_read_redemptions: __MODULE__.Channel.read_redemptions(),
    channel_manage_redemptions: __MODULE__.Channel.manage_redemptions(),
    channel_manage_schedule: __MODULE__.Channel.manage_schedule(),
    channel_read_stream_key: __MODULE__.Channel.read_stream_key(),
    channel_read_subscriptions: __MODULE__.Channel.read_subscriptions(),
    channel_manage_videos: __MODULE__.Channel.manage_videos(),
    channel_read_vips: __MODULE__.Channel.read_vips(),
    channel_manage_vips: __MODULE__.Channel.manage_vip(),
    channel_moderate: __MODULE__.Channel.moderate(),
    # Clips
    clips_edit: __MODULE__.Clips.edit(),
    # Moderation
    moderation_read: __MODULE__.Moderation.read(),
    moderator_manage_announcements: __MODULE__.Moderation.manage_announcements(),
    moderator_manage_automod: __MODULE__.Moderation.manage_automod(),
    moderator_read_automod_settings: __MODULE__.Moderation.read_automod_settings(),
    moderator_manage_automod_settings: __MODULE__.Moderation.manage_automod_settings(),
    moderator_read_banned_users: __MODULE__.Moderation.read_banned_users(),
    moderator_manage_banned_users: __MODULE__.Moderation.manage_banned_users(),
    moderator_read_blocked_terms: __MODULE__.Moderation.read_blocked_terms(),
    moderator_read_chat_messages: __MODULE__.Moderation.read_chat_messages(),
    moderator_manage_blocked_terms: __MODULE__.Moderation.manage_blocked_terms(),
    moderator_manage_chat_messages: __MODULE__.Moderation.manage_chat_messages(),
    moderator_read_chat_settings: __MODULE__.Moderation.read_chat_settings(),
    moderator_manage_chat_settings: __MODULE__.Moderation.manage_chat_messages(),
    moderator_read_chatters: __MODULE__.Moderation.read_chatters(),
    moderator_read_followers: __MODULE__.Moderation.read_followers(),
    moderator_read_guest_star: __MODULE__.Moderation.read_guest_star(),
    moderator_manage_guest_star: __MODULE__.Moderation.manage_guest_star(),
    moderator_read_moderators: __MODULE__.Moderation.read_moderators(),
    moderator_read_shield_mode: __MODULE__.Moderation.read_shield_mode(),
    moderator_manage_shield_mode: __MODULE__.Moderation.manage_shield_mode(),
    moderator_read_shoutouts: __MODULE__.Moderation.read_shoutouts(),
    moderator_manage_shoutouts: __MODULE__.Moderation.manage_shoutouts(),
    moderator_read_suspicious_users: __MODULE__.Moderation.read_suspicious_users(),
    moderator_read_unban_requests: __MODULE__.Moderation.read_unban_requests(),
    moderator_manage_unban_requests: __MODULE__.Moderation.manage_unban_requests(),
    moderator_read_vips: __MODULE__.Moderation.read_vips(),
    moderator_read_warnings: __MODULE__.Moderation.read_warnings(),
    moderator_manage_warnings: __MODULE__.Moderation.manage_warnings(),
    # User
    user_bot: __MODULE__.User.bot(),
    user_edit: __MODULE__.User.edit(),
    user_edit_broadcast: __MODULE__.User.edit_broadcast(),
    user_read_blocked_users: __MODULE__.User.read_blocked_users(),
    user_manage_blocked_users: __MODULE__.User.manage_blocked_users(),
    user_read_broadcast: __MODULE__.User.read_broadcast(),
    user_read_chat: __MODULE__.User.read_chat(),
    user_manage_chat_color: __MODULE__.User.manage_chat_color(),
    user_read_email: __MODULE__.User.read_email(),
    user_read_emotes: __MODULE__.User.read_emotes(),
    user_read_follows: __MODULE__.User.read_follows(),
    user_read_moderated_channels: __MODULE__.User.read_moderated_channels(),
    user_read_subscriptions: __MODULE__.User.read_subscriptions(),
    user_read_whispers: __MODULE__.User.read_whispers(),
    user_manage_whispers: __MODULE__.User.manage_whispers(),
    user_write_chat: __MODULE__.User.write_chat()
  }

  @doc """
  Get scope string by atom key. Example:

      TwitchAuth.Scopes.get(:user_read_email)
      # => "user:read:email"
  """
  def get(key), do: Map.fetch!(@scope_map, key)

  @doc "Get all valid scope strings"
  def all, do: Map.values(@scope_map)

  @doc "Get all valid scope atoms"
  def all_keys, do: Map.keys(@scope_map)
end
