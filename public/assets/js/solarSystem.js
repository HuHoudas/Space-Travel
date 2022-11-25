function getPlanetInfo(
  id,
  name,
  perihelion,
  gravity,
  sideralOrbit,
  avgTemp
) {
  document.getElementById("planetId").textContent = id;
  document.getElementByName("planetName").textContent = name;
  document.getElementByName("planetPerihelion").textContent = perihelion;
  document.getElementByName("planetGravity").textContent = gravity;
  document.getElementByName("planetSideralOrbit").textContent = sideralOrbit;
  document.getElementByName("planetAvgTemp").textContent = avgTemp;
}

/* document.getElementById('showPlanetInfo') */
function planetBodies() {
  fetch(
    "https://api.le-systeme-solaire.net/rest.php/bodies?data=id%2Cname%2Cperihelion%2Cmass%2Cgravity%2CsideralOrbit%2CavgTemp.&order=id%2Casc&filter%5B%5D=isPlanet%2Ceq%2Ctrue"
  )
    .then((response) => response.json())
    .then((planet) => console.log(planet.bodies));
  /*getPlanetInfo(planet.id, planet.name, planet.perihelion, planet.mass, planet.gravity, planet.sideralOrbit, planet.avgTemp))*/
}

planetBodies();
