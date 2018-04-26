# Custom Service Broker Workshop

Workshop on how to use and build custom service broker (Summit 2018).

## Deploy locally

To run locally, e.g. for development, clone the repo and run the using local
container.

```
$ git clone https://github.com/openshift-labs/custom-service-broker-workshop.git
$ make
```

## Deploying for production

For workshops deploy on OpenShift and provide attendees with exposed URL

```
$ oc new-app --name workshop -e CONTENT_URL_PREFIX="https://raw.githubusercontent.com/openshift-labs/custom-service-broker-workshop/master/" -e WORKSHOPS_URLS="https://raw.githubusercontent.com/openshift-labs/custom-service-broker-workshop/master/_workshop.yml" osevg/workshopper

$ oc expose svc workshop
```
