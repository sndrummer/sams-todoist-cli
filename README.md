# Todoist CLI

A simple command-line interface for Todoist for Linux/macOS.

## Setup

1. Clone this repo
2. Install dependencies:
   ```bash
   ./setup-venv.sh
   # or manually:
   pip install -r requirements.txt
   ```
3. Add your Todoist API key to `.env`:
   ```
   TODOIST_API_KEY=your_api_key_here
   ```
   Get your API key from: [Todoist Settings → Integrations → API token](https://app.todoist.com/app/settings/integrations/developer)

## Usage

### Creating Tasks

```bash
./todo today "Go to gym"           # Create task for today
./todo tomorrow "Eat cheese"        # Create task for tomorrow
./todo shopping "Apples"            # Add to Shopping project (creates project if needed)
```

### Listing Tasks

```bash
./todo today list                   # List today's tasks
./todo tomorrow list                # List tomorrow's tasks
./todo shopping list                # List Shopping project tasks
```

### Interactive Mode (Enhanced)

```bash
./todo -i today                     # Interactive mode for today's tasks
./todo -i tomorrow                  # Interactive mode for tomorrow's tasks
./todo -i shopping                  # Interactive mode for Shopping project
./todo shopping -i                  # Also works
```

Interactive mode features:
- **Navigation**: 
  - Arrow keys (↑/↓) or vim keys (j/k/h/l)
- **Actions**:
  - **Enter**: Complete the selected task
  - **a**: Add a new task to current view
  - **e**: Edit the selected task inline
  - **d**: Delete the selected task
  - **r**: Refresh task list from server
  - **q**: Quit

The interactive mode displays inline with colored output and a green ➤ selector. Non-selected tasks are dimmed for better focus.

## Features

- ✅ Super minimal - one file, ~400 lines (with fancy TUI)
- ✅ Create tasks for today/tomorrow with natural syntax
- ✅ Project support (case-insensitive, auto-creates projects)
- ✅ Interactive task completion
- ✅ No unnecessary features or complexity

## Examples

```bash
# Morning routine
./todo today "Morning standup"
./todo today "Review PRs"
./todo today list

# Shopping
./todo shopping "Milk"
./todo shopping "Bread"
./todo shopping -i  # Check off items while shopping

# Planning tomorrow
./todo tomorrow "Call dentist"
./todo tomorrow "Finish report"
./todo -i tomorrow  # Complete them tomorrow
```

## Requirements

- Python 3.6+
- Todoist account