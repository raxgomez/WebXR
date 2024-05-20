import '/backend/backend.dart';
import '/components/tarjeta1_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'menu_principal_copy_model.dart';
export 'menu_principal_copy_model.dart';

class MenuPrincipalCopyWidget extends StatefulWidget {
  const MenuPrincipalCopyWidget({super.key});

  @override
  State<MenuPrincipalCopyWidget> createState() =>
      _MenuPrincipalCopyWidgetState();
}

class _MenuPrincipalCopyWidgetState extends State<MenuPrincipalCopyWidget> {
  late MenuPrincipalCopyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MenuPrincipalCopyModel());

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
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: Color(0xFF6A3B60),
          automaticallyImplyLeading: false,
          title: Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Text(
              'Mariscos Don Koke',
              textAlign: TextAlign.start,
              style: FlutterFlowTheme.of(context).headlineMedium.override(
                    fontFamily: 'Outfit',
                    color: Colors.white,
                    fontSize: 22.0,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.w600,
                  ),
            ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Container(
            width: MediaQuery.sizeOf(context).width * 1.0,
            height: MediaQuery.sizeOf(context).height * 1.0,
            decoration: BoxDecoration(),
            child: StreamBuilder<List<MerchRecord>>(
              stream: queryMerchRecord(
                queryBuilder: (merchRecord) => merchRecord.orderBy('orden'),
              ),
              builder: (context, snapshot) {
                // Customize what your widget looks like when it's loading.
                if (!snapshot.hasData) {
                  return Center(
                    child: SizedBox(
                      width: 50.0,
                      height: 50.0,
                      child: CircularProgressIndicator(
                        valueColor: AlwaysStoppedAnimation<Color>(
                          FlutterFlowTheme.of(context).primary,
                        ),
                      ),
                    ),
                  );
                }
                List<MerchRecord> listViewMerchRecordList = snapshot.data!;
                return ListView.builder(
                  padding: EdgeInsets.zero,
                  scrollDirection: Axis.vertical,
                  itemCount: listViewMerchRecordList.length,
                  itemBuilder: (context, listViewIndex) {
                    final listViewMerchRecord =
                        listViewMerchRecordList[listViewIndex];
                    return Tarjeta1Widget(
                      key: Key(
                          'Keyv59_${listViewIndex}_of_${listViewMerchRecordList.length}'),
                      nombre: listViewMerchRecord.groupName,
                      imagen: listViewMerchRecord.groupPhoto,
                      listaPlatillos: listViewMerchRecord.platilloName,
                      renglonDatos: listViewMerchRecord.reference,
                      accion: () async {
                        context.pushNamed(
                          'Entradas',
                          queryParameters: {
                            'titulo': serializeParam(
                              listViewMerchRecord.groupName,
                              ParamType.String,
                            ),
                            'platillos': serializeParam(
                              listViewMerchRecord.platilloName,
                              ParamType.String,
                              true,
                            ),
                            'renglonDatos': serializeParam(
                              listViewMerchRecord.reference,
                              ParamType.DocumentReference,
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
      ),
    );
  }
}
