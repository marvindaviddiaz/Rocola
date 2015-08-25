<%@ include file="taglibs.jsp"%>
<link rel="stylesheet" type="text/css" media="all" href="<c:url value='estilos.css'/>" />
<link rel="stylesheet" type="text/css" href="/estilos.css" media="all">

<rich:modalPanel id="listadoCancionesBox" autosized="true" rendered="#{rocolaBean.mostrarListado}" onbeforeshow="std_effect_hide_CancionesLista()" onbeforehide="std_effect_show_CancionesLista()"
	onshow="std_effect_show_CancionesDetalle()">

	<rich:effect name="std_effect_show_CancionesDetalle" for="CancionesDetalle" type="Grow" />
	<rich:effect name="std_effect_hide_CancionesLista" for="CancionesLista" type="BlindUp" />
	<rich:effect name="std_effect_show_CancionesLista" for="CancionesDetalle" type="BlindDown" />

	<f:facet name="header">
		<h:outputText value="Listado de Canciones" />
	</f:facet>

	<DIV id="screen" class="fondoListado">
		<a4j:form id="CancionesDetalle" styleClass="fondoForm" >
			<h:panelGroup>
				<h:outputText value="#{rocolaBean.albunSeleccionado}" styleClass="tituloPagina" />
				<br>
				<rich:spacer styleClass="separadorTitulo" />
			</h:panelGroup>
			<br>
			<br>
			<h:panelGrid cellpadding="1" cellspacing="0" styleClass="centrar">
				<h:panelGrid id="GridDatos" columns="1" styleClass="centrar" cellspacing="1" cellpadding="0">
					<rich:dataTable id="tablaCanciones" rowClasses="listadoDatosDetalle1 ,listadoDatosDetalle2" headerClass="listadoDatosHeader" value="#{rocolaBean.listadoCanciones}" var="bean" border="0"
						cellpadding="3" cellspacing="0" styleClass="listadoDatosTable" rows="10">
						<h:column>
							<f:facet name="header">
								<h:outputText id="otpTxtSeleccion" value="Canciones" styleClass="subTituloPagina" />
							</f:facet>
							<a4j:commandLink action="#{rocolaBean.addCancion}" ajaxSingle="true" reRender="panelSubPrincipalDerecho">
								<h:outputText value="#{bean.nombre}" />
								<f:param name="cancionSeleccionadaUbicacion" value="#{bean.ubicacion}" />
								<f:param name="cancionSeleccionadaNombre" value="#{bean.nombre}" />
							</a4j:commandLink>
						</h:column>
					</rich:dataTable>
					<rich:datascroller align="center" for="tablaCanciones" maxPages="20" page="1" />
					<br>
					<br>
					<h:panelGrid styleClass="centrar">
						<a4j:commandLink id="regresar" oncomplete="Richfaces.hideModalPanel('listadoCancionesBox')" reRender="panelPrincipal">
							<h:outputText value="Regresar" />
						</a4j:commandLink>
					</h:panelGrid>

				</h:panelGrid>
			</h:panelGrid>
		</a4j:form>
	</DIV>
	<rich:hotKey key="esc" handler="#{rich:element('regresar')}.click()" />
</rich:modalPanel>