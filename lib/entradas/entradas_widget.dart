import '/components/tarjeta1_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'entradas_model.dart';
export 'entradas_model.dart';

class EntradasWidget extends StatefulWidget {
  const EntradasWidget({
    super.key,
    required this.titulo,
    required this.platillos,
    required this.renglonDatos,
  });

  final String? titulo;
  final List<String>? platillos;
  final DocumentReference? renglonDatos;

  @override
  State<EntradasWidget> createState() => _EntradasWidgetState();
}

class _EntradasWidgetState extends State<EntradasWidget> {
  late EntradasModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EntradasModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFFF0EBEB),
        appBar: AppBar(
          backgroundColor: Color(0xFF6A3B60),
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: Colors.white,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Text(
            valueOrDefault<String>(
              widget.titulo,
              'Vacio',
            ),
            style: FlutterFlowTheme.of(context).titleMedium.override(
                  fontFamily: 'Readex Pro',
                  fontSize: 24.0,
                  letterSpacing: 0.0,
                ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Builder(
            builder: (context) {
              final platilos = widget.platillos!.toList();
              return ListView.builder(
                padding: EdgeInsets.zero,
                scrollDirection: Axis.vertical,
                itemCount: platilos.length,
                itemBuilder: (context, platilosIndex) {
                  final platilosItem = platilos[platilosIndex];
                  return Tarjeta1Widget(
                    key: Key('Key627_${platilosIndex}_of_${platilos.length}'),
                    nombre: platilosItem,
                    imagen:
                        'https://www.eluniversal.com.mx/resizer/pw2spZy0JQA7tMLh979N0OhtEJ8=/1100x666/cloudfront-us-east-1.images.arcpublishing.com/eluniversal/D2DNNLWRTFDGFB4PKLOLV3K7UI.jpg',
                    listaPlatillos: widget.platillos!,
                    renglonDatos: widget.renglonDatos!,
                    accion: () async {
                      context.pushNamed(
                        'Details',
                        queryParameters: {
                          'titulo': serializeParam(
                            platilosItem,
                            ParamType.String,
                          ),
                        }.withoutNulls,
                      );
                    },
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
