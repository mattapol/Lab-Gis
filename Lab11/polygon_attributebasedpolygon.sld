<?xml version="1.0" encoding="ISO-8859-1"?>
<StyledLayerDescriptor version="1.0.0" 
    xsi:schemaLocation="http://www.opengis.net/sld StyledLayerDescriptor.xsd" 
    xmlns="http://www.opengis.net/sld" 
    xmlns:ogc="http://www.opengis.net/ogc" 
    xmlns:xlink="http://www.w3.org/1999/xlink" 
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
  <NamedLayer>
    <Name>Attribute-based polygon</Name>
    <UserStyle>
      <Title>SLD Cook Book: Attribute-based polygon</Title>
      <FeatureTypeStyle>
        <Rule>
          <Name>Small</Name>
          <Title>Less Than 1,000 sqkm</Title>
          <ogc:Filter>
            <ogc:PropertyIsLessThan>
              <ogc:PropertyName>SHAPE_AREA</ogc:PropertyName>
              <ogc:Literal>1000000000</ogc:Literal>
            </ogc:PropertyIsLessThan>
          </ogc:Filter>
          <PolygonSymbolizer>
            <Fill>
              <CssParameter name="fill">#ffd1b3</CssParameter>
            </Fill>
            <Stroke>  
		      <CssParameter name="stroke">#000000</CssParameter>  
	       	  <CssParameter name="stroke-width">2</CssParameter>  
            </Stroke>
          </PolygonSymbolizer>
        </Rule>
        <Rule>
          <Name>Medium</Name>
          <Title>1,000 to 2,000 sqkm</Title>
          <ogc:Filter>
            <ogc:And>
              <ogc:PropertyIsGreaterThanOrEqualTo>
                <ogc:PropertyName>SHAPE_AREA</ogc:PropertyName>
                <ogc:Literal>1000000000</ogc:Literal>
              </ogc:PropertyIsGreaterThanOrEqualTo>
              <ogc:PropertyIsLessThan>
                <ogc:PropertyName>SHAPE_AREA</ogc:PropertyName>
                <ogc:Literal>2000000000</ogc:Literal>
              </ogc:PropertyIsLessThan>
            </ogc:And>
          </ogc:Filter>
          <PolygonSymbolizer>
            <Fill>
              <CssParameter name="fill">#ff6600</CssParameter>
            </Fill>
            <Stroke>  
		      <CssParameter name="stroke">#000000</CssParameter>  
	       	  <CssParameter name="stroke-width">2</CssParameter>  
            </Stroke>
          </PolygonSymbolizer>
        </Rule>
        <Rule>
          <Name>Large</Name>
          <Title>Greater Than 2,000 sqkm</Title>
          <ogc:Filter>
            <ogc:PropertyIsGreaterThan>
              <ogc:PropertyName>SHAPE_AREA</ogc:PropertyName>
              <ogc:Literal>2000000000</ogc:Literal>
            </ogc:PropertyIsGreaterThan>
          </ogc:Filter>
          <PolygonSymbolizer>
            <Fill>
              <CssParameter name="fill">#803300</CssParameter>
            </Fill>
            <Stroke>  
		      <CssParameter name="stroke">#000000</CssParameter>  
	       	  <CssParameter name="stroke-width">2</CssParameter>  
            </Stroke>
          </PolygonSymbolizer>
        </Rule>
      </FeatureTypeStyle>
    </UserStyle>
  </NamedLayer>
</StyledLayerDescriptor>