#!/bin/bash

# Activate the Anaconda environment
source ~/anaconda3/bin/activate

# Create a new environment named "my_shell"
conda create -n my_shell python=3.11

# Activate the new environment
conda activate my_shell

# Install packages
conda install -c conda-forge dash-renderer
conda install -c conda-forge dash 
conda install -c conda-forge dash-html-components 
conda install -c conda-forge dash-core-components
conda install -c conda-forge plotly


# Verify installation
python -c "import plotly; print('Plotly version:', plotly.__version__)"
python -c "import dash; print('dash-html-components:', dash-html-components.__version__)"
python -c "import plotly; print('dash :', dash .__version__)"
python -c "import dash; print('dash-core-components:', dash-core-components.__version__)"
python -c "import dash; print('dash-renderer:',dash-renderer.__version__)"


conda install -c anaconda ipykernel
python -m ipykernel install --user --name=my_shell

# Deactivate the environment
conda deactivate
