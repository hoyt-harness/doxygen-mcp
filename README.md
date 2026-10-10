# Doxygen MCP Server
A comprehensive Model Context Protocol (MCP) server that provides full access to Doxygen's documentation generation capabilities. This server enables AI assistants like Claude to generate, configure, and manage documentation for any supported programming language through a clean, powerful interface.

## Overview
The Doxygen MCP Server automates the generation of documentation from source code comments, parsing information about classes, functions, and variables to produce output in formats like HTML and PDF. By simplifying and standardizing the documentation process, it enhances collaboration and maintenance across diverse programming languages and project scales.

## Features

### 🚀 Core Capabilities
- **Project Management**: Initialize and configure Doxygen projects with intelligent defaults
- **Multi-Language Support**: Full support for C/C++, Python, PHP, Java, C#, JavaScript, and more
- **Documentation Generation**: Generate comprehensive documentation in multiple formats
- **Validation & Analysis**: Check documentation coverage and identify missing documentation
- **Diagram Generation**: Create UML diagrams, inheritance graphs, and call graphs
- **Configuration Management**: Advanced Doxyfile creation and management

### 📋 Supported Languages
**Primary Support:**
- C, C++, Python, PHP

**Extended Support:**
- Java, C#, JavaScript, Objective-C, Fortran, VHDL, IDL

**Additional Support (via extension mapping):**
- Batch, PowerShell, Bash, Perl, Go, and more

### 📄 Output Formats
- HTML (with interactive navigation)
- LaTeX and PDF
- XML (for further processing)
- RTF (Rich Text Format)
- Man pages
- DocBook

## Prerequisites

- **Python 3.11+**
- **Doxygen** (required) - [Installation guide](https://www.doxygen.nl/download.html)
- **uv** package manager - [Installation guide](https://docs.astral.sh/uv/)
- **Graphviz** (optional, for diagrams) - [Installation guide](https://graphviz.org/download/)
- **LaTeX** (optional, for PDF) - [Installation guide](https://www.latex-project.org/get/)
- **Claude Desktop** or **Claude for Windows**

## Quick Start

### 1. Install Doxygen

```bash
# Ubuntu/Debian
sudo apt-get install doxygen

# macOS
brew install doxygen

# Windows
# Download from https://www.doxygen.nl/download.html
```

### 2. Install Dependencies

```bash
# Clone repository
git clone <repository-url>
cd doxygen-mcp

# Install with uv
uv sync
```

### 3. Configure Claude Desktop

Edit your Claude Desktop configuration file:
- **Windows**: `%APPDATA%\Claude\claude_desktop_config.json`
- **macOS**: `~/Library/Application Support/Claude/claude_desktop_config.json`
- **Linux**: `~/.config/Claude/claude_desktop_config.json`

Add Doxygen MCP to `mcpServers`:

```json
{
  "mcpServers": {
    "doxygen-mcp": {
      "command": "uv",
      "args": [
        "--directory",
        "/absolute/path/to/doxygen-mcp",
        "run",
        "doxygen-mcp"
      ],
      "env": {}
    }
  }
}
```

**Windows Example**:
```json
{
  "mcpServers": {
    "doxygen-mcp": {
      "command": "C:\\Users\\YourName\\.local\\bin\\uv.exe",
      "args": [
        "--directory",
        "D:\\dev\\doxygen-mcp",
        "run",
        "doxygen-mcp"
      ],
      "env": {}
    }
  }
}
```

### 4. Restart Claude Desktop

Close and reopen Claude Desktop to load the new MCP server.

### 5. Verify Installation

In Claude, try:
```
What MCP tools do you have available?
```

You should see Doxygen MCP tools listed.

### 6. Basic Usage Example

```
Create a Doxygen project for my C++ codebase at /path/to/project
```

Claude will initialize a Doxygen project with appropriate configuration.

## Detailed Documentation

For comprehensive documentation, see:
- **Installation & Usage**: [USING.md](./USING.md)
- **Troubleshooting**: [BUGS.md](./BUGS.md)
- **Contributing**: [CONTRIBUTING.md](./CONTRIBUTING.md)

## Contributing
See [CONTRIBUTING.md](./CONTRIBUTING.md) for contribution guidelines.

## License
This project is licensed under the GNU General Public License version 3 (GPLv3). See [COPYING.md](./COPYING.md) for the full license text.

## Support
For bug reports and troubleshooting, see [BUGS.md](./BUGS.md).

## Roadmap

### Planned Features
- [ ] Real-time documentation preview
- [ ] Integration with popular IDEs
- [ ] Custom theme support
- [ ] Advanced search capabilities
- [ ] Multi-repository documentation
- [ ] CI/CD integration helpers
- [ ] Performance analytics
- [ ] Documentation quality scoring

### Version History
- **v1.0.0**: Initial release with full MCP support for all features of Doxygen up to and including version 1.14.0.

---

For more information about Doxygen itself, visit [doxygen.nl](https://www.doxygen.nl/).