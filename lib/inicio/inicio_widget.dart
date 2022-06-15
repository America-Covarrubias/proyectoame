import '../destinos/destinos_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../home/home_widget.dart';
import '../tiposdeservicio/tiposdeservicio_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InicioWidget extends StatefulWidget {
  const InicioWidget({Key key}) : super(key: key);

  @override
  _InicioWidgetState createState() => _InicioWidgetState();
}

class _InicioWidgetState extends State<InicioWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFF6EBC62),
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30,
          borderWidth: 1,
          buttonSize: 60,
          icon: Icon(
            Icons.arrow_back_outlined,
            color: Colors.black,
            size: 30,
          ),
          onPressed: () async {
            await Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HomeWidget(),
              ),
            );
          },
        ),
        title: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(40, 80, 80, 80),
          child: Text(
            'AerolineaRM',
            textAlign: TextAlign.justify,
            style: FlutterFlowTheme.of(context).title1.override(
                  fontFamily: 'Montserrat',
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
          ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 10,
      ),
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              InkWell(
                onTap: () async {
                  await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DestinosWidget(),
                    ),
                  );
                },
                child: Card(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  color: Color(0xFFF5F5F5),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Image.network(
                        'https://th.bing.com/th/id/OIP.WC0GaL4bkmj_Yx7ivtrPqAHaEI?pid=ImgDet&rs=1',
                        width: 3000,
                        height: 200,
                        fit: BoxFit.cover,
                      ),
                      Text(
                        'Destinos de vuelos',
                        style: FlutterFlowTheme.of(context).title1.override(
                              fontFamily: 'Montserrat',
                            ),
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () async {
                  await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TiposdeservicioWidget(),
                    ),
                  );
                },
                child: Card(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  color: Color(0xFFF5F5F5),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Image.network(
                        'https://th.bing.com/th/id/R.0a791b4a41781b10cf5bd83e1ee8bd4b?rik=QEzRuO7Olj7fAw&riu=http%3a%2f%2fd1poh340f4imgl.cloudfront.net%2fupload%2fimages%2foriginales%2f2015%2f05%2f10%2f4c05fdf357c2a6d67e91eb3a3ab89a1d.jpg&ehk=7Vvt3qQKqhBxkCkeWzj6SueQSuVZJOxXID0HozFV39U%3d&risl=&pid=ImgRaw&r=0',
                        width: 3000,
                        height: 200,
                        fit: BoxFit.cover,
                      ),
                      Text(
                        'Tipos de servicios',
                        style: FlutterFlowTheme.of(context).title1.override(
                              fontFamily: 'Montserrat',
                            ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
