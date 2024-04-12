List<Map<String, dynamic>> hotelList = [
  {
    'image': 'bus1.jpg',
    'place': 'Open Space',
    'destination': 'London',
    'price': 25
  },
  {
    'image': 'bus2.jpeg',
    'place': 'Global Will',
    'destination': 'London',
    'price': 40
  },
  {
    'image': 'bus1.jpg',
    'place': 'Tallest Building',
    'destination': 'Dubai',
    'price': 68
  },
];

List<Map<String, dynamic>> ticketList = [
  {
    'from': {
      'code':"NYC",
      'name':"New-York"
    },
    'to': {
      'code':"LDN",
      'name':"London"
    },
    'flying_time': '8H 30M',
    'date': "1 MAY",
    'departure_time':"08:00 AM",
    "number":23
  },
  {
    'from': {
      'code':"DK",
      'name':"Dhaka"
    },
    'to': {
      'code':"SH",
      'name':"Shanghai"
    },
    'flying_time': '4H 20M',
    'date': "10 MAY",
    'departure_time':"09:00 AM",
    "number":45
  },
];

List<Map<String,dynamic>> busTicket=[
  {
    'from':{
      'dp_time':'08:00 AM',
      'arr_time':'12:30 PM',
    },
    'seats':{
      'time':'4H 30M',
      'total':'20 Seats'
    },
    'bus_operator':{
      'name':'NueGo',
      'bus_type':'AC Sleeper',
    },
    'Rating':{
      'rating':'★4.5',
      'total':'   100'
    },
    'price':{
      'total':'₹ 600',
      'discount':'',
    }
  },

  {
    'from':{
      'dp_time':'10:00 AM',
      'arr_time':'5:20 PM',
    },
    'seats':{
      'time':'7H 20M',
      'total':'30 Seats'
    },
    'bus_operator':{
      'name':'RedBus',
      'bus_type':'Volvo AC Sleeper',
    },
    'Rating':{
      'rating':"★4.2",
      'total' :'   60'
    },
    'price':{
      'total':'₹ 650',
      'discount':'',
    }
  },

  {
    'from':{
      'dp_time':'08:00 AM',
      'arr_time':'1:10 PM',
    },
    'seats':{
      'time':'5H 10M',
      'total':'40 Seats'
    },
    'bus_operator':{
      'name':'NueGo',
      'bus_type':'Electric AC Sleeper',
    },
    'Rating':{
      'rating':'★4.3',
      'total':'   107'
    },
    'price':{
      'total':'₹ 600',
      'discount':'',
    }
  },

  {
    "from": {
      "dp_time": "09:30 AM",
      "arr_time": "2:40 PM"
    },
    "seats": {
      "time": "6H 10M",
      "total": "35 Seats"
    },
    "bus_operator": {
      "name": "TravelGo",
      "bus_type": "AC Sleeper"
    },
    "Rating": {
      "rating": "★4.7",
      "total": "89"
    },
    "price": {
      "total": "₹ 550",
      "discount": "₹ 50 off"
    }
  },

  {
    "from": {
      "dp_time": "07:45 AM",
      "arr_time": "12:55 PM"
    },
    "seats": {
      "time": "5H 10M",
      "total": "42 Seats"
    },
    "bus_operator": {
      "name": "CityTrans",
      "bus_type": "Semi-Sleeper"
    },
    "Rating": {
      "rating": "★4.5",
      "total": "123"
    },
    "price": {
      "total": "₹ 620",
      "discount": ""
    }
  },

  {
    "from": {
      "dp_time": "10:15 AM",
      "arr_time": "3:25 PM"
    },
    "seats": {
      "time": "5H 10M",
      "total": "38 Seats"
    },
    "bus_operator": {
      "name": "ExpressBus",
      "bus_type": "AC Sleeper"
    },
    "Rating": {
      "rating": "★4.2",
      "total": "98"
    },
    "price": {
      "total": "₹ 580",
      "discount": "₹ 20 off"
    }
  },

  {
    "from": {
      "dp_time": "06:30 AM",
      "arr_time": "11:40 AM"
    },
    "seats": {
      "time": "5H 10M",
      "total": "45 Seats"
    },
    "bus_operator": {
      "name": "TravelLine",
      "bus_type": "AC Sleeper"
    },
    "Rating": {
      "rating": "★4.6",
      "total": "135"
    },
    "price": {
      "total": "₹ 640",
      "discount": ""
    }
  },

  {
    "from": {
      "dp_time": "06:30 AM",
      "arr_time": "11:40 AM"
    },
    "seats": {
      "time": "5H 10M",
      "total": "45 Seats"
    },
    "bus_operator": {
      "name": "TravelLine",
      "bus_type": "AC Sleeper"
    },
    "Rating": {
      "rating": "★4.6",
      "total": "135"
    },
    "price": {
      "total": "₹ 640",
      "discount": ""
    }
  },

  {
    "from": {
      "dp_time": "11:00 AM",
      "arr_time": "4:10 PM"
    },
    "seats": {
      "time": "5H 10M",
      "total": "40 Seats"
    },
    "bus_operator": {
      "name": "GreenTravel",
      "bus_type": "AC Seater"
    },
    "Rating": {
      "rating": "★4.4",
      "total": "110"
    },
    "price": {
      "total": "₹ 600",
      "discount": ""
    }
  },

  {
    "from": {
      "dp_time": "08:45 AM",
      "arr_time": "2:00 PM"
    },
    "seats": {
      "time": "5H 15M",
      "total": "37 Seats"
    },
    "bus_operator": {
      "name": "SkyBus",
      "bus_type": "AC Sleeper"
    },
    "Rating": {
      "rating": "★4.8",
      "total": "150"
    },
    "price": {
      "total": "₹ 620",
      "discount": ""
    }
  },

  {
    "from": {
      "dp_time": "09:15 AM",
      "arr_time": "2:25 PM"
    },
    "seats": {
      "time": "5H 10M",
      "total": "40 Seats"
    },
    "bus_operator": {
      "name": "RoyalTravel",
      "bus_type": "Semi-Sleeper"
    },
    "Rating": {
      "rating": "★4.2",
      "total": "95"
    },
    "price": {
      "total": "₹ 600",
      "discount": ""
    }
  }

];