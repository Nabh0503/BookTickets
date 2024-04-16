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

  {
    'from': {
      'code': "MUM",
      'name': "Mumbai"
    },
    'to': {
      'code': "DEL",
      'name': "Delhi"
    },
    'flying_time': '2H 30M',
    'date': "10 JUN",
    'departure_time': "12:30 PM",
    "number": 45
  },

  {
    'from': {
      'code': "BLR",
      'name': "Bangalore"
    },
    'to': {
      'code': "HYD",
      'name': "Hyderabad"
    },
    'flying_time': '1H 15M',
    'date': "5 APR",
    'departure_time': "10:45 AM",
    "number": 12
  },
  {
    'from': {
      'code': "CCU",
      'name': "Kolkata"
    },
    'to': {
      'code': "BOM",
      'name': "Mumbai"
    },
    'flying_time': '2H 45M',
    'date': "15 JUL",
    'departure_time': "03:20 PM",
    "number": 78
  },
  {
    'from': {
      'code': "DEL",
      'name': "Delhi"
    },
    'to': {
      'code': "CHE",
      'name': "Chennai"
    },
    'flying_time': '3H 10M',
    'date': "20 OCT",
    'departure_time': "07:15 AM",
    "number": 34
  },
  {
    'from': {
      'code': "AMD",
      'name': "Ahmedabad"
    },
    'to': {
      'code': "PNQ",
      'name': "Pune"
    },
    'flying_time': '1H 20M',
    'date': "12 FEB",
    'departure_time': "11:30 AM",
    "number": 56
  },

  {
    'from': {
      'code': "GOI",
      'name': "Goa"
    },
    'to': {
      'code': "IXB",
      'name': "Bagdogra"
    },
    'flying_time': '2H 55M',
    'date': "8 MAR",
    'departure_time': "09:45 AM",
    "number": 89
  },
  {
    'from': {
      'code': "BOM",
      'name': "Mumbai"
    },
    'to': {
      'code': "IXR",
      'name': "Ranchi"
    },
    'flying_time': '2H 40M',
    'date': "25 SEP",
    'departure_time': "06:10 PM",
    "number": 67
  },
  {
    'from': {
      'code': "BLR",
      'name': "Bangalore"
    },
    'to': {
      'code': "JAI",
      'name': "Jaipur"
    },
    'flying_time': '2H 15M',
    'date': "18 NOV",
    'departure_time': "04:30 PM",
    "number": 90
  },
  {
    'from': {
      'code': "DEL",
      'name': "Delhi"
    },
    'to': {
      'code': "COK",
      'name': "Kochi"
    },
    'flying_time': '3H 30M',
    'date': "3 AUG",
    'departure_time': "01:50 PM",
    "number": 23
  }
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

List<String> cities =    [ "New Delhi",    "Mumbai",    "Kolkata",    "Chennai",    "Bangalore",    "Hyderabad",    "Pune",
    "Ahmedabad",    "Jaipur",    "Surat",    "Lucknow",    "Kanpur",    "Nagpur",    "Indore",    "Thane",    "Bhopal",    "Visakhapatnam",
    "Pimpri-Chinchwad",    "Patna",    "Vadodara",    "Ghaziabad",    "Ludhiana",    "Agra",    "Nashik",    "Faridabad",    "Meerut",
    "Rajkot",    "Kalyan-Dombivli",    "Vasai-Virar",    "Varanasi",    "Srinagar",    "Aurangabad",    "Dhanbad",    "Amritsar",    "Navi Mumbai",
    "Allahabad",    "Ranchi",   "Howrah",    "Jabalpur",    "Gwalior",    "Vijayawada",    "Jodhpur",    "Madurai",    "Raipur",
    "Kota",    "Guwahati",    "Chandigarh",    "Solapur",    "Hubballi-Dharwad",    "Bareilly",    "Moradabad"
 ]; // Add your cities here
String? selectedCity;