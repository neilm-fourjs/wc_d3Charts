# wc_d3Charts
An simple Webcomponent that uses the d3 charting library

## Prerequisites

* Genero BDL 3.10+
* Genero Desktop Client 3.10+
* Genero Browser Client 1.00.49+

## ToDo

* Add more graph types etc

## Build / Run

```
$ make
fglcomp -Dgenero310  -c -W all wc_d3charts.4gl
fglcomp -Dgenero310  -c -W all wc_d3charts_demo.4gl
fglform -Dgenero310  -M wc_d3charts_demo.per
fgl2p  -o wc_d3Charts.42r wc_d3charts.42m wc_d3charts_demo.42m  
Building Genero Archive wc_d3Charts.gar ...
Done
All Forms build finished.
All Strings build finished.

$ make run
fglrun wc_d3Charts.42r
```

## Deploy to GAS

```
$ make deploy
Attempt undeploy of wc_d3Charts.gar ...
gasadmin gar --disable-archive wc_d3Charts | true
gasadmin gar --undeploy-archive wc_d3Charts | true
Attempt deploy of wc_d3Charts.gar ...
gasadmin gar --deploy-archive wc_d3Charts.gar
Command succeeded.

Found application wc_d3Charts.xcf.
Optimizing by compressing static resources...
Archive wc_d3Charts.gar successfully deployed.
gasadmin gar --enable-archive wc_d3Charts
Command succeeded.

Archive root: /opt/fourjs/gas-3.10.11/appdata/deployment/wc_d3Charts-20181211-161713
Install application wc_d3Charts.xcf into /opt/fourjs/gas-3.10.11/appdata/app
Archive wc_d3Charts successfully enabled.
```

## If the OS is Linux and you have a browser installed you can probably try this:

```
$ make rungbc
Attempt stop / restart of httpdispatch ...
xdg-open http://localhost:6394/ua/r/wc_d3Charts
Application Server startup ............................................ [done]
```

