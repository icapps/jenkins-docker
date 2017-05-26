FROM jenkins

# Root user to install some stuff
USER root

# Install Ubuntu libs
RUN apt-get update && apt-get install -y \ 
    build-essential curl git python-setuptools ruby \
    wget \
    sudo \
    expect \
    locales 

# Set the locale
RUN locale-gen en_US.UTF-8  
ENV LANG en_US.UTF-8  
ENV LANGUAGE en_US:en  
ENV LC_ALL en_US.UTF-8


# Weird fix to make sudo commands work - needed for Heroku Toolbelt installation
RUN rm -rf /var/lib/apt/lists/*

# Heroku toolbelt installation
RUN wget -O- https://toolbelt.heroku.com/install-ubuntu.sh | sh

# Heroku plugins
RUN heroku plugins:install heroku-container-registry

# Verify CLI
RUN heroku --version

# Switch back to Jenkins user
USER jenkins