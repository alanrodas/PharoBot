caminos
actualizarCaminos: unMundoNuevo

self caminos do: [ :punto | unMundoNuevo addMorph: punto.].
self caminos do: [ :punto | unMundoNuevo caminos add: punto.]