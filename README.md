# InBody MCP Connector

Servidor **MCP (Model Context Protocol)** para integrarse con **Lookin'Body Web API** de **InBody** (p. ej. InBody 770) y exponer mediciones de composición corporal a clientes MCP.

> Objetivo: repositorio **solo de documentación y especificaciones** listo para que cualquier desarrollador implemente su propio servidor MCP y lo conecte a la Web API de InBody, **sin** dependencias con Odoo, n8n u otras plataformas externas.

## Características
- Especificación **Speckit** (`spec/speckit.yaml`) con herramientas MCP:
  - `getInBodyDataByUserToken` (búsqueda global por teléfono)
  - `getInBodyDataByUserID` (búsqueda local por ID de usuario)
- Documentación completa en `/docs` (arquitectura, API, autenticación, ejemplos, instalación).
- Plantillas de issues, guía de contribución y seguridad.
- Estructura de proyecto escalable (.github, .devcontainer, assets).

## Estructura
```
inbody-mcp-connector/
├── .devcontainer/
├── .github/
│   ├── ISSUE_TEMPLATE/
│   └── workflows/
├── assets/
├── docs/
├── examples/
├── spec/
├── .editorconfig
├── .gitattributes
├── .gitignore
├── CHANGELOG.md
├── CODE_OF_CONDUCT.md
├── CONTRIBUTING.md
├── LICENSE
├── README.md
├── SECURITY.md
└── versions.md
```

## Requisitos
- Tener una **cuenta activa** de Lookin'Body Web y **API-KEY**.
- Conocer el **Account** (ID de la cuenta) y, para búsquedas globales, el **UserToken** (teléfono) del usuario.
- Python, Node u otro lenguaje (a elección) para implementar el servidor MCP apoyándose en esta documentación.

## Inicio rápido
1. Lee **`docs/overview.md`** y **`docs/mcp_architecture.md`**.
2. Revisa **`spec/speckit.yaml`** para entender la interfaz MCP.
3. Implementa tu servidor MCP y añade tus endpoints de backend que llamen a la Web API de InBody con cabeceras `Account` y `API-KEY`.
4. Prueba con los ejemplos de **`docs/examples.md`** y **`examples/requests.http`**.

## Aviso
Este repositorio no incluye credenciales ni código propietario. Consulta y respeta los **términos de uso** de la API y los acuerdos de tu cuenta Lookin'Body Web.

---
© 2025-10-04 InBody MCP Connector. MIT License.
