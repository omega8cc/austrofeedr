Drupal.openlayers.getStyleMapOld = Drupal.openlayers.getStyleMap;
Drupal.openlayers.getStyleMap = function(map, layername) {
	var styleMap = Drupal.openlayers.getStyleMapOld(map, layername);
	
	var trendRule = {
		"steigend": {pointRadius: 10},
		"gleichbleibend": {pointRadius: 7.5},
		"fallend": {pointRadius: 5}
	};
	styleMap.addUniqueValueRules("default", "field_hw_trend", trendRule);
	
	var statusRule = {
			"Niederwasser": {fillColor: '#088A08'},
			"Mittelwasser": {fillColor: '#045FB4'},
			"erhöhte Wasserführung": {fillColor: '#AEB404'},
			"Hochwasserstufe 1": {fillColor: '#FF8000'},
			"Hochwasserstufe 2": {fillColor: '#FE2E2E'},
			"Hochwasserstufe 3": {fillColor: '#FA58F4'}
		};
		styleMap.addUniqueValueRules("default", "field_hw_status", statusRule);
			
	return styleMap;
}