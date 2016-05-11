# Static parameters
WORKSPACE=./
BOX_PLAYBOOK=$WORKSPACE/box.yml
BOX_NAME=local

prudentia local <<EOF
unregister $BOX_NAME

register
$BOX_PLAYBOOK
$BOX_NAME

verbose 4

provision $BOX_NAME
EOF
