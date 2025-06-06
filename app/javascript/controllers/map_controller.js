import { Controller } from "@hotwired/stimulus";
import mapboxgl from "mapbox-gl";

export default class extends Controller {
  static values = {
    apiKey: String,
    markers: Array
  };

  connect() {
    mapboxgl.accessToken = this.apiKeyValue;

    this.map = new mapboxgl.Map({
      container: this.element,
      style: "mapbox://styles/mapbox/streets-v10"
    });

    this.#addFishToMap();
    this.#fitMapToMarkers()
  }

  #addFishToMap() {
    this.markersValue.forEach((fish) => {
        console.log(fish.info_window_html);
        const popup = new mapboxgl.Popup().setHTML(fish.info_window_html);

        const markerElement = document.createElement("div");
        markerElement.innerHTML = `<i class='fa-solid fa-fish-fins' style='color: #2D8BA5 !important; font-size: 34px;'></i>`;

        new mapboxgl.Marker({ element: markerElement })
            .setLngLat([fish.lng, fish.lat])
            .setPopup(popup)
            .addTo(this.map);
    });
    }

  #fitMapToMarkers() {
  const bounds = new mapboxgl.LngLatBounds()
  this.markersValue.forEach(fish => bounds.extend([ fish.lng, fish.lat ]))
  this.map.fitBounds(bounds, { padding: 40, maxZoom: 15, duration: 0 })
  }
}
