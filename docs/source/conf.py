from docs.vendor.sphinx_pyproject import SphinxConfig
from virtualenvwrapper import __version__

config = SphinxConfig('../../pyproject.toml', globalns=globals(), version = __version__)

author  # This name *looks* to be undefined, but it isn't.
