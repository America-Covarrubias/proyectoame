import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EmplaeadokazuhaWidget extends StatefulWidget {
  const EmplaeadokazuhaWidget({Key key}) : super(key: key);

  @override
  _EmplaeadokazuhaWidgetState createState() => _EmplaeadokazuhaWidgetState();
}

class _EmplaeadokazuhaWidgetState extends State<EmplaeadokazuhaWidget> {
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
          fillColor: FlutterFlowTheme.of(context).primaryBtnText,
          icon: Icon(
            Icons.arrow_left,
            color: Colors.black,
            size: 30,
          ),
          onPressed: () async {
            await Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => NavBarPage(initialPage: 'empleado'),
              ),
            );
          },
        ),
        title: Text(
          'Empleado',
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Montserrat',
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
            children: [
              Stack(
                children: [
                  Align(
                    alignment: AlignmentDirectional(0, 0),
                    child: Image.network(
                      'https://picsum.photos/seed/363/600',
                      width: 1000,
                      height: 300,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0, 0.96),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 230, 0, 0),
                      child: Container(
                        width: 120,
                        height: 120,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: Image.network(
                          'https://i.ytimg.com/vi/LfFu7eeWNac/hqdefault.jpg',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 20, 20, 20),
                child: ListTile(
                  title: Text(
                    'Nombre del empleado',
                    style: FlutterFlowTheme.of(context).title3,
                  ),
                  subtitle: Text(
                    'Kazuha',
                    style: FlutterFlowTheme.of(context).subtitle2.override(
                          fontFamily: 'Montserrat',
                        ),
                  ),
                  tileColor: Color(0xFFD9FFF4),
                  dense: false,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 5, 20, 20),
                child: ListTile(
                  title: Text(
                    'Telefono',
                    style: FlutterFlowTheme.of(context).title3,
                  ),
                  subtitle: Text(
                    '65602052022',
                    style: FlutterFlowTheme.of(context).subtitle2.override(
                          fontFamily: 'Montserrat',
                        ),
                  ),
                  tileColor: Color(0xFFD9FFF4),
                  dense: false,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 5, 20, 20),
                child: ListTile(
                  title: Text(
                    'Correo electronico',
                    style: FlutterFlowTheme.of(context).title3,
                  ),
                  subtitle: Text(
                    'ameame03@gmail.com',
                    style: FlutterFlowTheme.of(context).subtitle2.override(
                          fontFamily: 'Montserrat',
                        ),
                  ),
                  tileColor: Color(0xFFD9FFF4),
                  dense: false,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 5, 20, 20),
                child: ListTile(
                  title: Text(
                    'Puesto',
                    style: FlutterFlowTheme.of(context).title3,
                  ),
                  subtitle: Text(
                    'Azafata',
                    style: FlutterFlowTheme.of(context).subtitle2.override(
                          fontFamily: 'Montserrat',
                        ),
                  ),
                  tileColor: Color(0xFFD9FFF4),
                  dense: false,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
