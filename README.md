# Portman

A smart CLI tool to inspect and manage TCP ports. Helps developers identify processes using specific ports, with fallback detection methods and improved handling of TIME_WAIT states.

## Features

- Check if a TCP port is in use (using both lsof and ss as fallbacks)
- Detect ports in TIME_WAIT state
- Display detailed information about processes using a specific port
- Kill processes with or without confirmation

## Installation

### Automatic Installation

```bash
# Clone the repository
git clone https://github.com/wajih-awad/portman.git

# Navigate to the directory
cd portman

# Run the installation script
./install.sh
```

### Manual Installation

```bash
# Clone the repository
git clone https://github.com/wajih-awad/portman.git

# Navigate to the directory
cd portman

# Make the script executable
chmod +x portman

# Create a symbolic link to make it available globally
sudo ln -s "$(pwd)/portman" /usr/local/bin/portman
```

## Usage

After installation, you can use the command from anywhere:

```bash
portman <port-number> [--force]
```

### Examples

Check if port 8080 is in use:
```bash
portman 8080
```

Check and forcefully kill process using port 3000:
```bash
portman 3000 --force
```

## Requirements

- `lsof` command (usually pre-installed on most Unix-like systems)

## License

MIT
