<%@ include file="taglibs.jsp"%>
<link rel="stylesheet" type="text/css" media="all" href="<c:url value='estilos.css'/>" />
<link rel="stylesheet" type="text/css" href="/estilos.css" media="all">

<title>Rocola</title>
<body class="fondo">
	<f:view>
		<a4j:region>
			<h:form>
				<a4j:poll id="poll" interval="1000" enabled="true" reRender="panelSubPrincipalDerecho" />
			</h:form>
		</a4j:region>
		<a4j:form styleClass="fondoForm">
			<h:inputHidden value="#{rocolaBean.load}" id="hiddenLoad" />
			<h:panelGrid id="panelPrincipal" styleClass="centrar" width="100%" columns="2">
				<h:panelGrid id="panelSubPrincipalIzquierdo" columns="1" styleClass="centrar" width="75%">
					<h:panelGrid id="panelAlbunes" columns="3" styleClass="panelAlbunes" columnClasses="cell, cell, cell" width="100%">
						<h:panelGrid columns="1" styleClass="centrar" rendered="#{rocolaBean.listaAlbunes[0] !=null}">
							<rich:panel styleClass="box">
								<f:facet name="header"></f:facet>
								<rich:effect event="onclick" type="DropOut" params="duration:0.8" />
								<rich:effect event="onclick" for="dobox" type="Appear" params="delay:3.0,duration:0.5" />
								<h:graphicImage id="im01" value="#{rocolaBean.listaAlbunes[0].imagen}" styleClass="imagen">
									<a4j:support event="onclick" ajaxSingle="true" action="#{rocolaBean.mostrarListadoCanciones}" oncomplete="Richfaces.showModalPanel('listadoCancionesBox')" reRender="listadoCanciones">
										<f:param value="#{rocolaBean.listaAlbunes[0].nombre}" name="albumSeleccionado" />
									</a4j:support>
								</h:graphicImage>
								<h:outputText value="#{rocolaBean.listaAlbunes[0].nombre}" />
							</rich:panel>
							<br>
							<br>
						</h:panelGrid>

						<h:panelGrid columns="1" styleClass="centrar" rendered="#{rocolaBean.listaAlbunes[1] !=null}">
							<rich:panel styleClass="box">
								<f:facet name="header"></f:facet>
								<rich:effect event="onclick" type="DropOut" params="duration:0.8" />
								<rich:effect event="onclick" for="dobox" type="Appear" params="delay:3.0,duration:0.5" />
								<h:graphicImage id="im02" value="#{rocolaBean.listaAlbunes[1].imagen}" styleClass="imagen">
									<a4j:support event="onclick" ajaxSingle="true" action="#{rocolaBean.mostrarListadoCanciones}" oncomplete="Richfaces.showModalPanel('listadoCancionesBox')" reRender="listadoCanciones">
										<f:param value="#{rocolaBean.listaAlbunes[1].nombre}" name="albumSeleccionado" />
									</a4j:support>
								</h:graphicImage>
								<h:outputText value="#{rocolaBean.listaAlbunes[1].nombre}" />
							</rich:panel>
							<br>
							<br>
						</h:panelGrid>

						<h:panelGrid columns="1" styleClass="centrar" rendered="#{rocolaBean.listaAlbunes[2] !=null}">
							<rich:panel styleClass="box">
								<f:facet name="header"></f:facet>
								<rich:effect event="onclick" type="DropOut" params="duration:0.8" />
								<rich:effect event="onclick" for="dobox" type="Appear" params="delay:3.0,duration:0.5" />
								<h:graphicImage id="im03" value="#{rocolaBean.listaAlbunes[2].imagen}" styleClass="imagen">
									<a4j:support event="onclick" ajaxSingle="true" action="#{rocolaBean.mostrarListadoCanciones}" oncomplete="Richfaces.showModalPanel('listadoCancionesBox')" reRender="listadoCanciones">
										<f:param value="#{rocolaBean.listaAlbunes[2].nombre}" name="albumSeleccionado" />
									</a4j:support>
								</h:graphicImage>
								<h:outputText value="#{rocolaBean.listaAlbunes[2].nombre}" />
							</rich:panel>
							<br>
							<br>
						</h:panelGrid>

						<h:panelGrid columns="1" styleClass="centrar" rendered="#{rocolaBean.listaAlbunes[3] !=null}">
							<rich:panel styleClass="box">
								<f:facet name="header"></f:facet>
								<rich:effect event="onclick" type="DropOut" params="duration:0.8" />
								<rich:effect event="onclick" for="dobox" type="Appear" params="delay:3.0,duration:0.5" />
								<h:graphicImage id="im04" value="#{rocolaBean.listaAlbunes[3].imagen}" styleClass="imagen">
									<a4j:support event="onclick" ajaxSingle="true" action="#{rocolaBean.mostrarListadoCanciones}" oncomplete="Richfaces.showModalPanel('listadoCancionesBox')" reRender="listadoCanciones">
										<f:param value="#{rocolaBean.listaAlbunes[3].nombre}" name="albumSeleccionado" />
									</a4j:support>
								</h:graphicImage>
								<h:outputText value="#{rocolaBean.listaAlbunes[3].nombre}" />
							</rich:panel>
							<br>
							<br>
						</h:panelGrid>

						<h:panelGrid columns="1" styleClass="centrar" rendered="#{rocolaBean.listaAlbunes[4] !=null}">
							<rich:panel styleClass="box">
								<f:facet name="header"></f:facet>
								<rich:effect event="onclick" type="DropOut" params="duration:0.8" />
								<rich:effect event="onclick" for="dobox" type="Appear" params="delay:3.0,duration:0.5" />
								<h:graphicImage id="im05" value="#{rocolaBean.listaAlbunes[4].imagen}" styleClass="imagen">
									<a4j:support event="onclick" ajaxSingle="true" action="#{rocolaBean.mostrarListadoCanciones}" oncomplete="Richfaces.showModalPanel('listadoCancionesBox')" reRender="listadoCanciones">
										<f:param value="#{rocolaBean.listaAlbunes[4].nombre}" name="albumSeleccionado" />
									</a4j:support>
								</h:graphicImage>
								<h:outputText value="#{rocolaBean.listaAlbunes[4].nombre}" />
							</rich:panel>
							<br>
							<br>
						</h:panelGrid>

						<h:panelGrid columns="1" styleClass="centrar" rendered="#{rocolaBean.listaAlbunes[5] !=null}">
							<rich:panel styleClass="box">
								<f:facet name="header"></f:facet>
								<rich:effect event="onclick" type="DropOut" params="duration:0.8" />
								<rich:effect event="onclick" for="dobox" type="Appear" params="delay:3.0,duration:0.5" />
								<h:graphicImage id="im06" value="#{rocolaBean.listaAlbunes[5].imagen}" styleClass="imagen">
									<a4j:support event="onclick" ajaxSingle="true" action="#{rocolaBean.mostrarListadoCanciones}" oncomplete="Richfaces.showModalPanel('listadoCancionesBox')" reRender="listadoCanciones">
										<f:param value="#{rocolaBean.listaAlbunes[5].nombre}" name="albumSeleccionado" />
									</a4j:support>
								</h:graphicImage>
								<h:outputText value="#{rocolaBean.listaAlbunes[5].nombre}" />
							</rich:panel>
							<br>
							<br>
						</h:panelGrid>

						<h:panelGrid columns="1" styleClass="centrar" rendered="#{rocolaBean.listaAlbunes[6] !=null}">
							<rich:panel styleClass="box">
								<f:facet name="header"></f:facet>
								<rich:effect event="onclick" type="DropOut" params="duration:0.8" />
								<rich:effect event="onclick" for="dobox" type="Appear" params="delay:3.0,duration:0.5" />
								<h:graphicImage id="im07" value="#{rocolaBean.listaAlbunes[6].imagen}" styleClass="imagen">
									<a4j:support event="onclick" ajaxSingle="true" action="#{rocolaBean.mostrarListadoCanciones}" oncomplete="Richfaces.showModalPanel('listadoCancionesBox')" reRender="listadoCanciones">
										<f:param value="#{rocolaBean.listaAlbunes[6].nombre}" name="albumSeleccionado" />
									</a4j:support>
								</h:graphicImage>
								<h:outputText value="#{rocolaBean.listaAlbunes[6].nombre}" />
							</rich:panel>
							<br>
							<br>
						</h:panelGrid>

						<h:panelGrid columns="1" styleClass="centrar" rendered="#{rocolaBean.listaAlbunes[7] !=null}">
							<rich:panel styleClass="box">
								<f:facet name="header"></f:facet>
								<rich:effect event="onclick" type="DropOut" params="duration:0.8" />
								<rich:effect event="onclick" for="dobox" type="Appear" params="delay:3.0,duration:0.5" />
								<h:graphicImage id="im08" value="#{rocolaBean.listaAlbunes[7].imagen}" styleClass="imagen">
									<a4j:support event="onclick" ajaxSingle="true" action="#{rocolaBean.mostrarListadoCanciones}" oncomplete="Richfaces.showModalPanel('listadoCancionesBox')" reRender="listadoCanciones">
										<f:param value="#{rocolaBean.listaAlbunes[7].nombre}" name="albumSeleccionado" />
									</a4j:support>
								</h:graphicImage>
								<h:outputText value="#{rocolaBean.listaAlbunes[7].nombre}" />
							</rich:panel>
							<br>
							<br>
						</h:panelGrid>

						<h:panelGrid columns="1" styleClass="centrar" rendered="#{rocolaBean.listaAlbunes[8] !=null}">
							<rich:panel styleClass="box">
								<f:facet name="header"></f:facet>
								<rich:effect event="onclick" type="DropOut" params="duration:0.8" />
								<rich:effect event="onclick" for="dobox" type="Appear" params="delay:3.0,duration:0.5" />
								<h:graphicImage id="im09" value="#{rocolaBean.listaAlbunes[8].imagen}" styleClass="imagen">
									<a4j:support event="onclick" ajaxSingle="true" action="#{rocolaBean.mostrarListadoCanciones}" oncomplete="Richfaces.showModalPanel('listadoCancionesBox')" reRender="listadoCanciones">
										<f:param value="#{rocolaBean.listaAlbunes[8].nombre}" name="albumSeleccionado" />
									</a4j:support>
								</h:graphicImage>
								<h:outputText value="#{rocolaBean.listaAlbunes[8].nombre}" />
							</rich:panel>
						</h:panelGrid>
					</h:panelGrid>

					<h:panelGrid id="panelPagineo" columns="3" styleClass="centrar" width="45%" columnClasses="columnaIzquierda,columnaCentro,columnaDerecha">
						<h:graphicImage value="/images/left-arrows-disabled.png" styleClass="columnaIzquierda" rendered="#{!rocolaBean.showPrevPage}" />
						<h:graphicImage id="prevButton" value="/images/left-arrows.png" styleClass="columnaIzquierda" rendered="#{rocolaBean.showPrevPage}">
							<a4j:support ajaxSingle="true" event="onclick" action="#{rocolaBean.anteriorPagineo}" reRender="panelSubPrincipalIzquierdo,hiddenLoad" />
						</h:graphicImage>

						<h:outputText id="labelPagineo" value="#{rocolaBean.labelPaginas}" styleClass="subTituloPagina" />

						<h:graphicImage value="/images/right-arrows-disabled.png" styleClass="columnaDerecha" rendered="#{!rocolaBean.showNextPage}" />
						<h:graphicImage id="nextButton" value="/images/right-arrows.png" styleClass="columnaDerecha" rendered="#{rocolaBean.showNextPage}">
							<a4j:support ajaxSingle="true" event="onclick" action="#{rocolaBean.siguientePagineo}" reRender="panelSubPrincipalIzquierdo,hiddenLoad" />
						</h:graphicImage>
					</h:panelGrid>
				</h:panelGrid>



				<h:panelGrid id="panelSubPrincipalDerecho" columns="1" width="25%">
					<h:outputText value="Reproduciendo: #{rocolaBean.enReproduccion}" styleClass="reproduciendo" /> 
					<br>
					<h:panelGrid id="gridReproduccion" columns="1" styleClass="centrar" cellspacing="1" cellpadding="0" width="100%">
						<rich:dataTable id="tablaReproduccion" rowClasses="listadoDatosDetalle1 ,listadoDatosDetalle2" headerClass="listadoDatosHeader" value="#{rocolaBean.listadoCancionesCola}" var="bean" border="0"
							cellpadding="3" cellspacing="0" styleClass="listadoDatosTable" rows="10">
							<h:column>
								<f:facet name="header">
									<h:outputText id="otpTxtSeleccion" value="Lista  de  Reproducción" styleClass="subTituloPagina" style="margin-left:60px !important;margin-right:60px !important;" />
								</f:facet>
								<h:outputText value="#{bean}" />
							</h:column>
						</rich:dataTable>
						<rich:datascroller align="center" for="tablaReproduccion" maxPages="20" page="1" />
					</h:panelGrid>
				</h:panelGrid>
			</h:panelGrid>
		</a4j:form>

		<rich:hotKey key="1" handler="#{rich:element('im01')}.click()" />
		<rich:hotKey key="2" handler="#{rich:element('im02')}.click()" />
		<rich:hotKey key="3" handler="#{rich:element('im03')}.click()" />
		<rich:hotKey key="4" handler="#{rich:element('im04')}.click()" />
		<rich:hotKey key="5" handler="#{rich:element('im05')}.click()" />
		<rich:hotKey key="6" handler="#{rich:element('im06')}.click()" />
		<rich:hotKey key="7" handler="#{rich:element('im07')}.click()" />
		<rich:hotKey key="8" handler="#{rich:element('im08')}.click()" />
		<rich:hotKey key="9" handler="#{rich:element('im09')}.click()" />

		<rich:hotKey key="left" handler="#{rich:element('prevButton')}.click()" />
		<rich:hotKey key="right" handler="#{rich:element('nextButton')}.click()" />

		<a4j:include id="listadoCanciones" viewId="/ListadoCanciones.jsp" ajaxRendered="false" />
	</f:view>
</body>