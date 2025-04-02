# Base de Datos Mundial de Países y Ciudades 🌍

Este repositorio contiene una base de datos completa con información de países y ciudades de todo el mundo. La base de datos está estructurada en SQL y está diseñada para ser fácilmente integrable en cualquier proyecto que necesite datos geográficos.

![image_fx (1)](https://github.com/user-attachments/assets/0a12e3e1-8337-48ed-a603-7e82a724b65c)

## 📋 Características

- Lista completa de países con sus códigos ISO
- Base de datos de ciudades organizada por país
- Formato SQL compatible con la mayoría de sistemas de gestión de bases de datos
- Estructura clara y bien organizada
- Fácil de mantener y actualizar

## 🚀 Instalación

La instalación se realiza en tres pasos secuenciales:

1. **Cargar la lista de países**
   ```sql
   source world_countries.sql
   ```

2. **Preparar la tabla de ciudades**
   ```sql
   source world_cities.sql
   ```

3. **Cargar las ciudades de los países deseados**
   ```sql
   source cities/[nombre_del_pais].sql
   ```

## 📁 Estructura del Proyecto

```
├── world_countries.sql    # Lista completa de países
├── world_cities.sql      # Estructura de la tabla de ciudades
└── cities/              # Directorio con archivos SQL por país
    ├── Afghanistan.sql
    ├── Albania.sql
    ├── Algeria.sql
    └── ...
```

## 💾 Estructura de la Base de Datos

### Tabla de Países
- `id`: Identificador único
- `name`: Nombre del país
- `iso_code`: Código ISO del país
- `phone_code`: Código telefónico internacional

### Tabla de Ciudades
- `id`: Identificador único
- `country_id`: ID del país al que pertenece
- `name`: Nombre de la ciudad
- `state`: Estado/Provincia/Región
- `postal_code`: Código postal

## 🔍 Ejemplos de Uso

### Consultar todos los países
```sql
SELECT * FROM countries;
```

### Consultar ciudades de un país específico
```sql
SELECT c.* 
FROM cities c
JOIN countries co ON c.country_id = co.id
WHERE co.iso_code = 'ES';
```

### Buscar ciudades por nombre
```sql
SELECT c.*, co.name as country_name
FROM cities c
JOIN countries co ON c.country_id = co.id
WHERE c.name LIKE '%Madrid%';
```

## 🤝 Contribuciones

Las contribuciones son bienvenidas. Por favor, asegúrate de:

1. Hacer fork del repositorio
2. Crear una rama para tu feature (`git checkout -b feature/AmazingFeature`)
3. Commit de tus cambios (`git commit -m 'Add some AmazingFeature'`)
4. Push a la rama (`git push origin feature/AmazingFeature`)
5. Abrir un Pull Request

## 📝 Notas

- Los códigos postales pueden variar según el país y no están disponibles para todas las ciudades
- Algunos países pueden tener diferentes divisiones administrativas (estados, provincias, regiones, etc.)

## 📄 Licencia

Este proyecto está bajo la Licencia MIT - ver el archivo [LICENSE](LICENSE) para más detalles.

## ✨ Créditos

Este proyecto es mantenido por la comunidad. Si encuentras algún error o tienes sugerencias de mejora, no dudes en abrir un issue.

---
Hecho con ❤️ para la comunidad de desarrolladores 
