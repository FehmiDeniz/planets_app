class PlanetModel {
  String? name;
  double? mass;
  double? radius;
  double? period;
  double? semiMajorAxis;
  double? temperature;
  double? distanceLightYear;
  double? hostStarMass;
  double? hostStarTemperature;

  PlanetModel(
      {this.name,
      this.mass,
      this.radius,
      this.period,
      this.semiMajorAxis,
      this.temperature,
      this.distanceLightYear,
      this.hostStarMass,
      this.hostStarTemperature});

  PlanetModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    mass = json['mass'];
    radius = json['radius'];
    period = json['period'];
    semiMajorAxis = json['semi_major_axis'];
    temperature = json['temperature'];
    distanceLightYear = json['distance_light_year'];
    hostStarMass = json['host_star_mass'];
    hostStarTemperature = json['host_star_temperature'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['mass'] = this.mass;
    data['radius'] = this.radius;
    data['period'] = this.period;
    data['semi_major_axis'] = this.semiMajorAxis;
    data['temperature'] = this.temperature;
    data['distance_light_year'] = this.distanceLightYear;
    data['host_star_mass'] = this.hostStarMass;
    data['host_star_temperature'] = this.hostStarTemperature;
    return data;
  }
}
