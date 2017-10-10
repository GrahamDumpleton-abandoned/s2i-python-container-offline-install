To create builder images:

```
oc new-app --file=https://raw.githubusercontent.com/GrahamDumpleton/s2i-python-container-offline-install/master/template.json --param PYTHON_VERSION=2.7
oc new-app --file=https://raw.githubusercontent.com/GrahamDumpleton/s2i-python-container-offline-install/master/template.json --param PYTHON_VERSION=3.3
oc new-app --file=https://raw.githubusercontent.com/GrahamDumpleton/s2i-python-container-offline-install/master/template.json --param PYTHON_VERSION=3.4
oc new-app --file=https://raw.githubusercontent.com/GrahamDumpleton/s2i-python-container-offline-install/master/template.json --param PYTHON_VERSION=3.5
```

The OpenShift cluster must support ``docker`` type builds. Only a build is
triggered by above command, no applications deployed.

To use, then run:

```
oc new-app s2i-python-container-2.7~https://gitlab.com/osevg/python-flask-modwsgi --env PIP_INDEX_URL=https://pypi.python.org/simple -name flask27
```

Will check for following ``pip`` environment variables and set an equivalent
setting in ``distutils.cfg`` file.

* ``PIP_INDEX_URL``
* ``PIP_NO_INDEX``
* ``PIP_FIND_LINKS``
