import 'package:wallpapers/model/categories.dart';
String apiKey ='563492ad6f91700001000001bb112c6ec96444fba240384d65eabc61';

List<CategoriesModel> getCategories(){
  List<CategoriesModel> categories =new List();
  CategoriesModel categorieModel = new CategoriesModel();
  categorieModel.imgUrl ='https://images.unsplash.com/photo-1613238360009-ccf3e17de63b?ixid=MXwxMjA3fDB8MHx0b3BpYy1mZWVkfDI0fDZzTVZqVExTa2VRfHxlbnwwfHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60';
  categorieModel.categorieName='Nature'; 
  categories.add(categorieModel);
  categorieModel= new CategoriesModel();

  categorieModel.imgUrl ='https://images.unsplash.com/photo-1613316762715-6e4af92690ce?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80';
  categorieModel.categorieName='People'; 
  categories.add(categorieModel);
  categorieModel= new CategoriesModel();

  categorieModel.imgUrl ='https://images.unsplash.com/photo-1602003729508-c3c55a51bc20?ixid=MXwxMjA3fDB8MHx0b3BpYy1mZWVkfDQwfHJuU0tESHd3WVVrfHxlbnwwfHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60';
  categorieModel.categorieName='Architecture'; 
  categories.add(categorieModel);
  categorieModel= new CategoriesModel();

  categorieModel.imgUrl ='https://images.pexels.com/photos/2226458/pexels-photo-2226458.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940';
  categorieModel.categorieName='Logistics'; 
  categories.add(categorieModel);
  categorieModel= new CategoriesModel();

  categorieModel.imgUrl ='https://images.pexels.com/photos/374870/pexels-photo-374870.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500';
  categorieModel.categorieName='City'; 
  categories.add(categorieModel);
  categorieModel= new CategoriesModel();

  categorieModel.imgUrl ='https://images.unsplash.com/photo-1613169620329-6785c004d900?ixid=MXwxMjA3fDB8MHx0b3BpYy1mZWVkfDE0fEZ6bzN6dU9ITjZ3fHxlbnwwfHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60';
  categorieModel.categorieName='Travel'; 
  categories.add(categorieModel);
  categorieModel= new CategoriesModel();

  categorieModel.imgUrl ='https://images.unsplash.com/photo-1612999105465-d970b00015a8?ixid=MXwxMjA3fDB8MHx0b3BpYy1mZWVkfDE2fEo5eXJQYUhYUlFZfHxlbnwwfHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60';
  categorieModel.categorieName='Technology'; 
  categories.add(categorieModel);
  categorieModel= new CategoriesModel();

  categorieModel.imgUrl ='https://images.unsplash.com/photo-1588856005291-986101a095e8?ixid=MXwxMjA3fDB8MHx0b3BpYy1mZWVkfDR8SnBnNktpZGwtSGt8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60';
  categorieModel.categorieName='Animals'; 
  categories.add(categorieModel);
  categorieModel= new CategoriesModel();

  categorieModel.imgUrl ='https://images.unsplash.com/photo-1575153103805-5d01bc3682c5?ixid=MXwxMjA3fDB8MHx0b3BpYy1mZWVkfDE3fHhqUFI0aGxrQkdBfHxlbnwwfHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60';
  categorieModel.categorieName='FoodS'; 
  categories.add(categorieModel);
  categorieModel= new CategoriesModel();

  categorieModel.imgUrl ='https://images.unsplash.com/photo-1612796525171-7233c6b246f6?ixid=MXwxMjA3fDB8MHx0b3BpYy1mZWVkfDE2fGRpanBidzk5a1FRfHxlbnwwfHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60';
  categorieModel.categorieName='History'; 
  categories.add(categorieModel);
  categorieModel= new CategoriesModel();

  return categories;

 }