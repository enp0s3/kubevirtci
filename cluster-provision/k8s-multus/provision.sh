#!/bin/bash

set -ex

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

cd $DIR

source ../images.sh

../cli/cli provision --prefix k8s-multus-${version}-provision --scripts ./scripts --k8s-version ${version} --base kubevirtci/${IMAGES[centos7]} --tag kubevirtci/k8s-multus-${version}
