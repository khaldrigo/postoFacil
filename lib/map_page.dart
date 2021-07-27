import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import './favorites.dart';

class MapPage extends StatefulWidget {
  const MapPage({Key? key}) : super(key: key);

  @override
  _MapPageState createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  GoogleMapController? mapController;
  Set<Marker> markers = Set<Marker>();
  double lat = -2.426469;
  double lng = -54.717159;

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  Widget mapPage(BuildContext context) {
    return Container(
      child: GoogleMap(
        onMapCreated: _onMapCreated,
        onCameraMove: (data) {
          print(data);
        },
        onTap: (position) {
          print(position);
        },
        initialCameraPosition: CameraPosition(
          target: LatLng(lat, lng),
          zoom: 14.0,
        ),
        markers: markers,
      ),
    );
  }

  Widget favorites(Favorites gasStation) {
    return Container(
      child: GoogleMap(
        onMapCreated: _onMapCreated,
        onCameraMove: (data) {
          print(data);
        },
        onTap: (position) {
          print(position);
        },
        initialCameraPosition: CameraPosition(
          target: LatLng(lat, lng),
          zoom: 14.0,
        ),
        markers: markers,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Posto Fácil'),
          titleSpacing: 0,
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {},
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.notifications_none),
              onPressed: () {},
            ),
          ],
          elevation: 15,
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.yellow, Colors.green],
                begin: Alignment.bottomRight,
                end: Alignment.topLeft,
              ),
            ),
          ),
          bottom: TabBar(
            indicatorColor: Colors.black,
            tabs: [
              Tab(
                icon: Icon(
                  Icons.home,
                ),
                text: 'Início',
              ),
              Tab(
                icon: Icon(
                  Icons.star,
                ),
                text: 'Favoritos',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            mapPage(context),
            mapPage(context),
          ],
        ),
      ),
    );
  }
}
