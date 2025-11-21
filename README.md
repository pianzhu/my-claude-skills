# My Claude Skills

A collection of custom Claude Code skills following the [official Anthropic skills format](https://github.com/anthropics/skills).

## What are Claude Code Skills?

Skills are modular capabilities that extend Claude Code's functionality. Each skill is a self-contained folder with a `SKILL.md` file containing YAML metadata and instructions that Claude follows when the skill is activated.

## 📁 Repository Structure

```
my-claude-skills/
└── round-table-analysis/    # Deep analysis framework using philosophical perspectives
    └── SKILL.md
```

## Available Skills

### 🔄 Round Table Analysis

**Purpose**: Deep pre-execution analysis framework using four philosophers (Socrates, Aristotle, Feynman, Drucker) for structured critical thinking.

**When to use**:
- Before implementing complex features
- When you need to thoroughly understand a topic
- To question assumptions and explore multiple perspectives
- For complex decisions requiring deeper analysis

**Trigger phrases**:
- "help me think through"
- "analyze this topic"
- "before we start"
- "I want to understand"

**Location**: `round-table-analysis/`

## 🚀 How to Add Skills to Claude Code

### Prerequisites

You need Claude Code (CLI or Desktop) installed to use these skills.

### Installation Methods

#### Method 1: Add Skills Directory to Claude Code

The easiest way is to add this entire repository as a skills directory:

1. **Clone this repository**:
   ```bash
   git clone https://github.com/pianzhu/my-claude-skills.git
   ```

2. **Add to Claude Code configuration**:

   Edit your Claude configuration file:
   - **macOS**: `~/Library/Application Support/Claude/claude_desktop_config.json`
   - **Windows**: `%APPDATA%\Claude\claude_desktop_config.json`
   - **Linux**: `~/.config/Claude/claude_desktop_config.json`

   Add the skills directory path:
   ```json
   {
     "skillDirectories": [
       "/path/to/my-claude-skills"
     ]
   }
   ```

3. **Restart Claude** to load the skills.

#### Method 2: Copy Individual Skills

You can copy individual skill folders to your local Claude skills directory:

1. **Locate your Claude skills directory** (create if it doesn't exist):
   - **macOS/Linux**: `~/.claude/skills/`
   - **Windows**: `%USERPROFILE%\.claude\skills\`

2. **Copy the skill folder**:
   ```bash
   cp -r round-table-analysis ~/.claude/skills/
   ```

3. **Restart Claude** to load the skill.

### Using Skills

Once installed, skills are automatically available in Claude Code:

1. **Automatic activation**: Claude will use skills when it detects relevant trigger phrases
2. **Manual activation**: You can explicitly invoke a skill by name
3. **Skill context**: Skills provide additional instructions and capabilities to Claude

## 📖 Skill Format

Each skill follows this structure:

```markdown
---
name: skill-name
description: What the skill does and when to use it
---

# Skill Title

[Instructions that Claude follows when skill is active]

## Usage Guidelines
- Guideline 1
- Guideline 2

## Examples
- Example usage patterns
```

## 🛠️ Creating Your Own Skills

Want to create a custom skill? Follow these steps:

1. **Create a new folder** with a descriptive name (lowercase, hyphens for spaces)
2. **Add a `SKILL.md` file** with YAML frontmatter
3. **Define the skill**:
   - `name`: Unique identifier (lowercase, hyphenated)
   - `description`: Complete description of functionality and use cases
4. **Write instructions** for Claude to follow
5. **Test the skill** in Claude Code

See the [official skills repository](https://github.com/anthropics/skills) for more examples.

## 📝 Contributing

Contributions are welcome! To add a new skill:

1. Fork this repository
2. Create a new skill folder following the standard format
3. Test your skill thoroughly
4. Submit a pull request with:
   - The skill folder containing `SKILL.md`
   - Updated README with skill description
   - Usage examples (optional)

## 📄 License

This project is licensed under the terms specified in the LICENSE file.

## 🔗 Resources

- [Anthropic Skills Repository](https://github.com/anthropics/skills)
- [Claude Code Documentation](https://docs.claude.com/claude-code)
- [Claude Desktop App](https://claude.ai/download)

---

**Current Skills**: 1 | **Status**: Active Development
