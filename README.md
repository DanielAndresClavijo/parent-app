# Modular App

Este proyecto es una aplicación Flutter que sirve como ejemplo de una arquitectura modularizada. La aplicación principal actúa como un contenedor para varias microaplicaciones, que se desarrollan y mantienen como paquetes independientes en sus propios repositorios de Git.

## Descripción General del Proyecto

El objetivo principal es demostrar un enfoque escalable y mantenible para construir aplicaciones Flutter complejas. La "Modular App" proporciona la estructura base, la navegación principal y los elementos comunes, mientras que las funcionalidades específicas se encapsulan en "micro-apps".

### Ventajas de esta Arquitectura

- **Desarrollo Desacoplado:** Diferentes equipos pueden trabajar en microaplicaciones de forma independiente y en paralelo.
- **Escalabilidad:** Añadir nuevas funcionalidades es tan simple como crear un nuevo paquete e integrarlo, sin necesidad de modificar extensivamente el código base existente.
- **Reutilización de Código:** Los componentes de UI, temas, utilidades y otros elementos comunes se pueden compartir entre todas las microaplicaciones a través de un paquete `common_ui`.

## Arquitectura

El proyecto se compone de las siguientes partes:

- **Parent App (Este Repositorio):** La aplicación principal que sirve como contenedor. Gestiona la navegación, el tema y la integración de las diferentes microaplicaciones.
- **`micro_app_one`:** Un ejemplo de una microaplicación. Es un paquete de Flutter independiente que reside en su propio repositorio de Git.
- **`common_ui`:** Un paquete compartido que contiene elementos comunes como widgets de UI, temas, colores, fuentes y otras utilidades. También se encuentra en su propio repositorio.

## Cómo Empezar

Sigue estos pasos para tener una copia local del proyecto funcionando.

### Prerrequisitos

- **Flutter SDK:** Asegúrate de tener Flutter instalado. Puedes seguir la [guía de instalación oficial](https://docs.flutter.dev/get-started/install).
- **Git:** Necesario para clonar los repositorios.

### Instalación

1.  **Clona los Repositorios:**
    Necesitarás clonar este repositorio y los de los módulos. Asegúrate de tener acceso a las URLs correctas (deberás reemplazarlas por las de tus repositorios reales).

2.  **Configura `pubspec.yaml`:**
    El archivo `pubspec.yaml` de esta aplicación utiliza dependencias de `git` para enlazar los otros paquetes. Verifica que las URLs y las ramas (`ref`) sean correctas.

    ```yaml
    dependencies:
      flutter:
        sdk: flutter

      micro_app_one:
        git:
          url: https://github.com/example/micro_app_one.git # Reemplaza con tu URL
          ref: main
      common_ui:
        git:
          url: https://github.com/example/common_ui.git # Reemplaza con tu URL
          ref: main
    ```

3.  **Instala las Dependencias:**
    Desde el directorio raíz de este proyecto, ejecuta el siguiente comando para descargar todas las dependencias:
    ```sh
    flutter pub get
    ```

### Ejecutar la Aplicación

Una vez que todas las dependencias se hayan instalado correctamente, puedes ejecutar la aplicación en un emulador o dispositivo físico:

```sh
flutter run
```
