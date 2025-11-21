# My Claude Skills

A collection of custom Claude skills for enhanced productivity and specialized tasks.

## 📁 Repository Structure

This repository contains three categories of Claude skills:

```
my-claude-skills/
├── round-table-analysis/    # Skills for multi-perspective analysis and discussion
├── strategic-planner/        # Skills for strategic planning and decision making
└── task-automator/          # Skills for task automation and workflow optimization
```

### Skill Categories

#### 🔄 Round Table Analysis
Skills designed to facilitate multi-perspective analysis, collaborative decision-making, and comprehensive problem exploration from different viewpoints.

#### 🎯 Strategic Planner
Skills focused on strategic thinking, planning, goal setting, and long-term decision-making processes.

#### ⚙️ Task Automator
Skills that help automate repetitive tasks, optimize workflows, and improve productivity through intelligent automation.

## 🚀 How to Add Claude Skills

### Method 1: Using Claude Desktop App

1. **Locate your Claude configuration file:**
   - **macOS**: `~/Library/Application Support/Claude/claude_desktop_config.json`
   - **Windows**: `%APPDATA%\Claude\claude_desktop_config.json`
   - **Linux**: `~/.config/Claude/claude_desktop_config.json`

2. **Add the skill to your configuration:**
   Open the configuration file and add the skill under the `mcpServers` section:

   ```json
   {
     "mcpServers": {
       "your-skill-name": {
         "command": "node",
         "args": ["/path/to/my-claude-skills/skill-category/skill-name/index.js"]
       }
     }
   }
   ```

3. **Restart Claude Desktop** to load the new skills.

### Method 2: Direct Integration

For skills that provide direct integration:

1. Clone this repository:
   ```bash
   git clone https://github.com/pianzhu/my-claude-skills.git
   ```

2. Navigate to the specific skill directory:
   ```bash
   cd my-claude-skills/[skill-category]/[skill-name]
   ```

3. Follow the specific installation instructions in the skill's README file.

### Method 3: Using MCP (Model Context Protocol)

If the skill supports MCP:

1. Install the skill as an MCP server
2. Configure it in your Claude Desktop settings
3. The skill will be available across all your Claude conversations

## 📖 Usage

Each skill directory contains:
- **README.md**: Detailed documentation and usage instructions
- **Configuration files**: Necessary setup files
- **Examples**: Sample use cases and demonstrations

## 🛠️ Development Status

**Note**: This repository is currently under development. Skill directories will be added progressively with complete documentation and implementation.

## 📝 Contributing

Contributions are welcome! If you'd like to add a new skill or improve existing ones:

1. Fork the repository
2. Create a new branch for your skill
3. Add your skill to the appropriate category
4. Submit a pull request with documentation

## 📄 License

This project is licensed under the terms specified in the LICENSE file.

## 🔗 Resources

- [Claude Desktop App](https://claude.ai/download)
- [Model Context Protocol Documentation](https://modelcontextprotocol.io/)
- [Claude API Documentation](https://docs.anthropic.com/)

---

**Status**: 🚧 Under Construction - Skills will be added incrementally
