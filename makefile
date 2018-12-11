# Automatic Makefile made by make4js by N.J.M.

GARNAME=wc_d3Charts
GARFILE=$(GARNAME).gar
GARXCF=wc_d3Charts.xcf

fgl_obj1 =  \
	 wc_d3charts.$(4GLOBJ) \
	 wc_d3charts_demo.$(4GLOBJ)

fgl_frm1 =  \
	 wc_d3charts_demo.$(FRMOBJ) \
	 wc_d3charts.$(FRMOBJ)

#depend::
#	echo "making depends";  cd lib ; ./link_lib

all:: gar

PRG1=wc_d3Charts.42r

include ./Make_fjs.inc

$(GARFILE): $(PRG1) $(GARXCF) MANIFEST
	$(info Building Genero Archive $(GARFILE) ...)
	@zip -qr $(GARFILE) MANIFEST $(GARXCF) *.42? webcomponents
	$(info Done)

gar: $(GARFILE)

deploy: $(GARFILE)
	gasadmin gar --disable-archive $(GARNAME) | true
	gasadmin gar --undeploy-archive $(GARNAME) | true
	gasadmin gar --deploy-archive $(GARFILE)
	gasadmin gar --enable-archive $(GARNAME)

rungbc: $(GARFILE)
	killall httpdispatch | true
	httpdispatch &	
	xdg-open http://localhost:6394/ua/r/wc_d3Charts
