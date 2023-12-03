#!/usr/bin/with-contenv bashio

# Start ser2net service
ser2net -d -u

# Write your code to communicate with the caa-66 device using the RNET protocol
# You can use the bashio library to access the add-on options and log messages
# You can use the curl command to send requests to the home assistant API
# For example, to turn on zone 1, you can use the following command:

#curl -X POST -H "Authorization: Bearer ${SUPERVISOR_TOKEN}" -H "Content-Type: application/json" -d '{"entity_id": "media_player.zone_1"}' http://supervisor/core/api/services/media_player/turn_on
