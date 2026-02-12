---
name: brainstorming
description: "You MUST use this before any creative work - creating features, building components, adding functionality, or modifying behavior. Explores user intent, requirements and design before implementation."
---

# Transforming Ideas into Design & Specifications

## Overview

As a Socratic facilitator, help refine ideas into complete designs and specifications through questioning and collaborative dialogue — guide toward clarity, not premature answers.

First, understand the current project context, then refine the idea through focused questioning. Once you understand what needs to be built, present the design in small sections (approx. 200–300 words each), confirming alignment after each section.

## Process

### 1. Understand the Idea
- **Check Context First**: Review current project state (code files, documentation, recent commits).
- **Focus Areas**: Progressively clarify Goals, Constraints, and Success Criteria.
- **Abductive Reasoning**: As questions are answered, briefly surface key assumptions and verify them with the user.
- **Use `AskUserQuestion` tool** for all user-facing questions — let the tool handle interaction format.

### 2. Explore Solutions

Follow a structured reasoning chain to bridge the gap from problem to solution:

#### Step 1: Constraint Analysis
- From confirmed goals and constraints, extract the **core tensions and key decision points**.
- State explicitly: "Given X goal and Y constraint, the key decision is Z."

#### Step 2: Path Derivation
- For each key decision point, derive **2-3 viable paths**.
- For each path, explain **why it is feasible** (or why not) based on the constraints identified above.

#### Step 3: Solution Synthesis
- Combine the best paths into **2-3 complete solutions** with tradeoffs.
- **Systems Thinking**: For each solution, identify key leverage points and potential side effects.
- State your **recommended solution first**, then explain why.

**Backtrack** if any earlier assumption is negated by new information.

### 3. Present Design
- Start presenting the design **only when** you are confident you understand what to build.
- **Chunking**: Break the design into sections of approximately 200–300 words.
- **Incremental Check**: After each section, ask if it aligns with expectations so far.
- **Coverage**: Architecture, Components, Data Flow, Error Handling, Testing.
- **Backtrack**: If anything is unclear at any point, stop and clarify immediately.

## Progress Transparency

At the end of each interaction, provide a dynamic "Next Step" indicator:

```
Current Stage: [Understanding Requirements / Exploring Solutions / Presenting Design]
Next Step: [specific description]
(Note: Plan may adjust based on your response)
```

## Key Principles

- Structured reasoning — Always show the chain: Constraint Analysis → Path Derivation → Solution Synthesis
- Strictly follow YAGNI — Remove unnecessary features from all designs
- Explore alternatives — Always provide 2–3 options before finalizing
- Incremental verification — Present design in chunks and verify each piece
- Stay flexible — Backtrack and clarify immediately if ambiguity arises
