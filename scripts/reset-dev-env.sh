set -e
cd "$(dirname "$0")/.."

echo "WARNING: This will remove all containers and delete volumes"
read -p "Are you sure? (y/N): " confirm
if [[ "$confirm" != "y" && "$confirm" != "Y" ]]; then
  echo "Cancelled."
  exit 0
fi

echo "Stopping Docker containers"
docker compose down -v --remove-orphans
