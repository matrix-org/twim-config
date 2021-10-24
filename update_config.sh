cd /data

echo "Updating config.toml ..."
wget -nv -O config.toml https://raw.githubusercontent.com/matrix-org/twim-config/master/config.toml

echo "Updating template.md ..."
wget -nv -O template.md https://raw.githubusercontent.com/matrix-org/twim-config/master/template.md

echo "Updating update_config.sh ..."
wget -nv -O update_config.sh https://raw.githubusercontent.com/matrix-org/twim-config/master/update_config.sh

