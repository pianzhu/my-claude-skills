---
name: brainstorming
description: "You MUST use this before any creative work - creating features, building components, adding functionality, or modifying behavior. Explores user intent, requirements and design before implementation."
---

# Transforming Ideas into Design & Specifications

## Overview

Help refine ideas into complete designs and specifications through natural collaborative dialogue.

First, understand the current project context, then refine the idea by asking only **one question at a time**. Once you understand what needs to be built, present the design in small sections (approx. 200–300 words each), confirming alignment after each section.

## Process

### 1. Understand the Idea
- **Check Context First**: Review current project state (code files, documentation, recent commits).
- **One Question at a Time**: progressively refine the idea.
- **Use Multiple Choice**: prioritize multiple-choice questions over open-ended ones where possible.
- **Single Focus**: Ask only one question per message; if a topic needs depth, break it into multiple questions.
- **Focus Areas**: Goals, Constraints, Success Criteria.

### 2. Abductive Reasoning & Systems Thinking (Internal Reasoning - DO NOT OUTPUT)
You MUST perform the following checks internally in your chain of thought, but **NEVER** show this raw analysis to the user:
- **Abductive Reasoning**: List 2–3 assumptions (include 1 low-probability high-risk assumption); identify the minimum action to verify the most likely one.
- **Systems Thinking**: Mark 1–2 key leverage points and side-effect channels; use these to constrain solution boundaries.
- **Guardrails**: Do not discard low-probability high-risk assumptions until falsified; backtrack if premises are negated.

### 3. Explore Solutions
- Based on the internal analysis, propose **2-3 different solutions** with tradeoffs.
- Present options conversationally, offering your **recommendation and rationale**.
- State your recommended solution first, then explain why.

### 4. Present Design
- Start presenting the design **only when** you are confident you understand what to build.
- **Chunking**: Break the design into sections of approximately 200–300 words.
- **Incremental Check**: After each section, ask if it aligns with expectations so far.
- **Coverage**: Architecture, Components, Data Flow, Error Handling, Testing.
- **Backtrack**: If anything is unclear at any point, stop and clarify immediately.

## Key Principles

- One question at a time — Do not bombard the user with multiple questions
- Prioritize multiple choice — Easier to answer than open-ended questions when feasible
- Strictly follow YAGNI — Remove unnecessary features from all designs
- Explore alternatives — Always provide 2–3 options before finalizing
- Incremental verification — Present design in chunks and verify each piece
- Stay flexible — Backtrack and clarify immediately if ambiguity arises
