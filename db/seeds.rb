Port.destroy_all
Port.create([
  { name:"New York", latitude:40.7128, longitude:74.0059 },
  { name:"San Francisco", latitude:37.7749, longitude:122.4194 },
  { name:"Cape Town", latitude:33.9249, longitude:18.4241 },
  { name:"Hong Kong", latitude:22.3964, longitude:114.1095 },
  { name:"Sydney", latitude:33.8688, longitude:151.2093 },
  { name:"Lisbon", latitude:38.7223, longitude:9.1393 },
  { name:"Sao Paulo", latitude:23.5505, longitude:46.6333 },
])

Boat.destroy_all
Boat.create([
  { name:"Num1", capacity:10, location:"New York" },
  { name:"Num2", capacity:20, location:"New York" },
  { name:"Num3", capacity:50, location:"Sydney" },
  { name:"Num4", capacity:20, location:"Sao Paulo" },
  { name:"Num5", capacity:100, location:"Hong Kong" },
])
