require 'json'

# data = '{
#   "emails": [
#     {
#       "subject": "Hi there Ruby monstas",
#       "date": "2016-08-28",
#       "from": "Past self"
#     },
#     {
#       "subject": "Keep on coding!",
#       "date": "2016-08-28",
#       "from": "Future self"
#     }
#   ]
# }'


# alternate syntax

data = %({
  "emails": [
    {
      "subject": "Hi there Ruby monstas",
      "date": "2016-08-28",
      "from": "Future self"
    }
  ]
})

data = JSON.parse(data)

p data["emails"].first["subject"]
