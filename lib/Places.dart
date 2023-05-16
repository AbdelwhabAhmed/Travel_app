class Places {
  final String image, title, description,distance,coast,duration;
  final int id;

  Places( {
    required this.duration,
    required this.id,
    required this.image,
    required this.title,
    required this.description,
    required this.distance,
    required this.coast,

  });
}
List<Places> places=[
   Places(
      id: 1,
      image: 'https://images.pexels.com/photos/699466/pexels-photo-699466.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
       title:'Paris,France',
       description: 'Paris, the capital of France, is considered one of the most beautiful cities in the country in terms of tourist places and celebrations, and is famous for the Eiffel Tower'
       ,distance: '5000KM',
       coast: '\$1200',
     duration: '5 Days'

   ),
   Places(
      id: 2,
      image: 'https://images.pexels.com/photos/275202/pexels-photo-275202.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      title:'Berlin,Germany',
      description: 'Berlin is the capital of Germany and its largest city in terms of area and population. It is famous for its many museums and tourist attractions'
      ,distance: '4000KM',
       coast: '\$1700',
       duration: '4 Days'

  ),
   Places(
      id: 3,
      image: 'https://images.pexels.com/photos/219692/pexels-photo-219692.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      title:'Dubai,UAE',
      description: 'Dubai is one of the best and most beautiful tourist cities in the world. It is famous for its tallest skyscraper and has tourist beaches.'
      ,distance: '8000KM',
      coast: '\$1000',
       duration: '7 Days'

  ),
   Places(
      id: 4,
      image: 'https://images.pexels.com/photos/10131669/pexels-photo-10131669.jpeg?auto=compress&cs=tinysrgb&w=600',
      title:'Cairo,Egypt',
      description: 'Cairo, the capital of Egypt, is famous for its popular restaurants, the Pharaonic pyramids, the Cairo Tower, and many other wonderful tourist places.'
      ,distance: '9000KM',
      coast: '\$500',
       duration: '10 Days'

  ),




];