import logging
import os

LOG_FOLDER = os.path.join(os.path.dirname(__file__), "..", "logs")
LOG_FOLDER = os.path.abspath(LOG_FOLDER)

os.makedirs(LOG_FOLDER, exist_ok=True)

LOG_FILE = os.path.join(LOG_FOLDER, "pipeline.log")

logging.basicConfig(
    filename=LOG_FILE,
    level=logging.INFO,
    format="%(asctime)s | %(levelname)s | %(message)s"
)

logger = logging.getLogger(__name__)