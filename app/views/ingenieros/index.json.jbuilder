json.array!(@ingenieros) do |ingeniero|
  json.extract! ingeniero, :id, :nombrecompleto, :dependencia, :estudios, :proyectos_id
  json.url ingeniero_url(ingeniero, format: :json)
end
