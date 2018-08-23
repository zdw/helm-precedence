# Helm Dependency tests
Hang tight while we grab the latest from your chart repositories...
...Unable to get an update from the "local" chart repository (http://127.0.0.1:8879/charts):
	Get http://127.0.0.1:8879/charts/index.yaml: dial tcp 127.0.0.1:8879: connect: connection refused
...Successfully got an update from the "incubator" chart repository
...Successfully got an update from the "rook-beta" chart repository
...Successfully got an update from the "cord" chart repository
...Successfully got an update from the "kube_charts" chart repository
...Successfully got an update from the "stable" chart repository
Update Complete. ⎈Happy Helming!⎈
Saving 1 charts
Deleting outdated charts
## BATTERY 1 - no values file
---
# Source: parent/charts/child/templates/child_configmap.yaml
---
apiVersion: v1
kind: ConfigMap
data:
  child-configmap: |

    Example 1 - global tag set only in parent
    child image1 tag: set in global parent

    Example 2 - global tag set only in child
    child image2 tag: set in global child

    Example 3 - "local" tag set only in parent
    child image3 tag: 

    Example 4 - "local" tag set only in child
    child image4 tag: set in child

    Example 5 - global tag set in both
    child image5 tag: set in global parent

    Example 6 - "local" tag set in both
    child image6 tag: set in child


---
# Source: parent/templates/parent_configmap.yaml
---
apiVersion: v1
kind: ConfigMap
data:
  parent-configmap: |

    Example 1 - global tag set only in parent
    parent image1 tag: set in global parent

    Example 2 - global tag set only in child
    parent image2 tag: 

    Example 3 - "local" tag set only in parent
    parent image3 tag: set in parent

    Example 4 - "local" tag set only in child
    parent image4 tag: 

    Example 5 - global tag set in both
    parent image5 tag: set in global parent

    Example 6 - "local" tag set in both
    parent image6 tag: set in parent


## BATTERY 2 - all_global.yaml values file
---
# Source: parent/charts/child/templates/child_configmap.yaml
---
apiVersion: v1
kind: ConfigMap
data:
  child-configmap: |

    Example 1 - global tag set only in parent
    child image1 tag: set in all_global.yaml

    Example 2 - global tag set only in child
    child image2 tag: set in all_global.yaml

    Example 3 - "local" tag set only in parent
    child image3 tag: set in all_global.yaml

    Example 4 - "local" tag set only in child
    child image4 tag: set in child

    Example 5 - global tag set in both
    child image5 tag: set in all_global.yaml

    Example 6 - "local" tag set in both
    child image6 tag: set in child


---
# Source: parent/templates/parent_configmap.yaml
---
apiVersion: v1
kind: ConfigMap
data:
  parent-configmap: |

    Example 1 - global tag set only in parent
    parent image1 tag: set in all_global.yaml

    Example 2 - global tag set only in child
    parent image2 tag: set in all_global.yaml

    Example 3 - "local" tag set only in parent
    parent image3 tag: set in parent

    Example 4 - "local" tag set only in child
    parent image4 tag: set in all_global.yaml

    Example 5 - global tag set in both
    parent image5 tag: set in all_global.yaml

    Example 6 - "local" tag set in both
    parent image6 tag: set in parent


## BATTERY 3 - all_local.yaml values file
---
# Source: parent/charts/child/templates/child_configmap.yaml
---
apiVersion: v1
kind: ConfigMap
data:
  child-configmap: |

    Example 1 - global tag set only in parent
    child image1 tag: set in global parent

    Example 2 - global tag set only in child
    child image2 tag: set in global child

    Example 3 - "local" tag set only in parent
    child image3 tag: 

    Example 4 - "local" tag set only in child
    child image4 tag: set in child

    Example 5 - global tag set in both
    child image5 tag: set in global parent

    Example 6 - "local" tag set in both
    child image6 tag: set in child


---
# Source: parent/templates/parent_configmap.yaml
---
apiVersion: v1
kind: ConfigMap
data:
  parent-configmap: |

    Example 1 - global tag set only in parent
    parent image1 tag: set in all_local.yaml

    Example 2 - global tag set only in child
    parent image2 tag: set in all_local.yaml

    Example 3 - "local" tag set only in parent
    parent image3 tag: set in all_local.yaml

    Example 4 - "local" tag set only in child
    parent image4 tag: set in all_local.yaml

    Example 5 - global tag set in both
    parent image5 tag: set in all_local.yaml

    Example 6 - "local" tag set in both
    parent image6 tag: set in all_local.yaml


## BATTERY 4 - all_local_child.yaml values file
---
# Source: parent/charts/child/templates/child_configmap.yaml
---
apiVersion: v1
kind: ConfigMap
data:
  child-configmap: |

    Example 1 - global tag set only in parent
    child image1 tag: set in all_local_child.yaml

    Example 2 - global tag set only in child
    child image2 tag: set in all_local_child.yaml

    Example 3 - "local" tag set only in parent
    child image3 tag: set in all_local_child.yaml

    Example 4 - "local" tag set only in child
    child image4 tag: set in all_local_child.yaml

    Example 5 - global tag set in both
    child image5 tag: set in all_local_child.yaml

    Example 6 - "local" tag set in both
    child image6 tag: set in all_local_child.yaml


---
# Source: parent/templates/parent_configmap.yaml
---
apiVersion: v1
kind: ConfigMap
data:
  parent-configmap: |

    Example 1 - global tag set only in parent
    parent image1 tag: set in global parent

    Example 2 - global tag set only in child
    parent image2 tag: 

    Example 3 - "local" tag set only in parent
    parent image3 tag: set in parent

    Example 4 - "local" tag set only in child
    parent image4 tag: 

    Example 5 - global tag set in both
    parent image5 tag: set in global parent

    Example 6 - "local" tag set in both
    parent image6 tag: set in parent


