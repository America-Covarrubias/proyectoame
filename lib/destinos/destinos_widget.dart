import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DestinosWidget extends StatefulWidget {
  const DestinosWidget({Key key}) : super(key: key);

  @override
  _DestinosWidgetState createState() => _DestinosWidgetState();
}

class _DestinosWidgetState extends State<DestinosWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).secondaryText,
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30,
          borderWidth: 1,
          buttonSize: 60,
          fillColor: FlutterFlowTheme.of(context).primaryBackground,
          icon: Icon(
            Icons.keyboard_arrow_left,
            color: Colors.black,
            size: 30,
          ),
          onPressed: () async {
            await Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => NavBarPage(initialPage: 'inicio'),
              ),
            );
          },
        ),
        title: Text(
          'Destinos',
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Poppins',
                color: Colors.white,
                fontSize: 22,
              ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 2,
      ),
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: ListView(
            padding: EdgeInsets.zero,
            scrollDirection: Axis.vertical,
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Card(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    color: Color(0xFFF5F5F5),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Image.network(
                          'https://elviajista.com/wp-content/uploads/2018/09/fujis.jpg',
                          width: 3000,
                          height: 200,
                          fit: BoxFit.cover,
                        ),
                        Text(
                          'Japon',
                          style: FlutterFlowTheme.of(context).title1,
                        ),
                      ],
                    ),
                  ),
                  Card(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    color: Color(0xFFF5F5F5),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Image.network(
                          'https://lh5.googleusercontent.com/proxy/lF_KiyucPOGHCTU13jqWck8Exp1uiO86Q0Fhe0jcleg4Cyjl5wHrqGCsjxp6yf-aZmYetyzrXmBkTFDcHAa1FV-9p8EoTPyLsVrD47D2wafwBXGqwiTjxRVRqO-Kx_tI4Kyfidc9wKJdNJPJjSR5hKxnpRUCXsg9owB7=w1200-h630-p-k-no-nu',
                          width: 3000,
                          height: 200,
                          fit: BoxFit.cover,
                        ),
                        Text(
                          'España',
                          style: FlutterFlowTheme.of(context).title1.override(
                                fontFamily: 'Montserrat',
                              ),
                        ),
                      ],
                    ),
                  ),
                  Card(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    color: Color(0xFFF5F5F5),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Image.network(
                          'https://th.bing.com/th/id/R.91b3de0eefd522cbc15c4b4fe8c6fb30?rik=xLBsuSPIZ2OY3g&pid=ImgRaw&r=0',
                          width: 3000,
                          height: 200,
                          fit: BoxFit.cover,
                        ),
                        Text(
                          'Brasil',
                          style: FlutterFlowTheme.of(context).title1.override(
                                fontFamily: 'Montserrat',
                              ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
