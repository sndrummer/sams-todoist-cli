# Todoist CLI Project Context

## Overview
This is a minimal Todoist CLI that Sam wanted - extremely stripped down and simple. The goal was to make task management as fast as possible with natural language commands.

## Key Design Decisions

1. **Simplicity First**: No config files, no complex commands, just intuitive syntax
2. **Natural Language**: Commands like `today "Task"` and `tomorrow "Task"` 
3. **Case-Insensitive Projects**: Projects work without the `#` and are case-insensitive
4. **Auto-Create Projects**: If a project doesn't exist, it creates it automatically
5. **Minimal Output**: Just checkmarks and task names, no clutter

## File Structure
```
/home/brood/source/repos/sams-todoist-cli/
├── todo              # Main executable (Python script)
├── .env             # Contains TODOIST_API_KEY
├── requirements.txt  # Just requests and python-dotenv
├── setup-venv.sh    # Virtual environment setup
└── README.md        # User documentation
```

## API Integration
- Uses Todoist REST API v2
- API key stored in `.env` file
- Endpoints used:
  - `/tasks` - Create, list, and complete tasks
  - `/projects` - List and create projects

## Command Formats

### Task Creation
- `./todo today "Task"` - Creates task due today
- `./todo tomorrow "Task"` - Creates task due tomorrow  
- `./todo [project] "Task"` - Adds to project (e.g., `./todo shopping "Milk"`)

### Listing
- `./todo today list` - Shows today's tasks
- `./todo tomorrow list` - Shows tomorrow's tasks
- `./todo [project] list` - Shows project tasks

### Interactive Mode
- `./todo -i today` or `./todo today -i` - Complete today's tasks
- `./todo -i tomorrow` or `./todo tomorrow -i` - Complete tomorrow's tasks
- `./todo -i [project]` or `./todo [project] -i` - Complete project tasks

## Implementation Notes

1. **No Checkboxes in Interactive Mode**: Just numbers (e.g., "1. Task name") since we're prompting for numbers anyway
2. **Project Name Flexibility**: Both `shopping` and `Shopping` work for the same project
3. **Error Handling**: Minimal - just status codes printed if something fails
4. **No Emoji by Default**: Only used for success indicators (✓) and completion celebration (🎉)

## Sam's Requirements (Original Request)
- "very fucking stripped down and simple"
- Write `today "Go to gym"` and it creates the task
- `today list` shows tasks
- `./todo -i today` for interactive completion
- Projects without `#` symbol
- Case-insensitive project names
- Simple Python implementation

## Testing Commands
```bash
# Quick test sequence
./todo today "Test task 1"
./todo today "Test task 2"
./todo today list
./todo -i today
```