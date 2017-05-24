Listado de scripts

1.- createJson.sh: 

   Este script genera un archivo json a partir de los datos ingresados como parametros, esta orientado para ser utilizado para realizar llamados a ejecución de procesos de UrbanCode.
   con el comando:
   
   udclient [global-args...] [global-flags...]
     requestApplicationProcess [JSON file]
	 

   El archivo resultante del script es:
   
   {
   "application": "AppUCD",
   "applicationProcess": "ProcessAppUCD",
   "environment": "Production",
   "onlyChanged": "true",
   "versions": [{
       "component": "ComponenteSQL",
       "version": "1.0",
       "component": "ComponenteWEB",
       "version": "1.1",
       "component": "ComponenteMDW",
       "version": "2.1"
     }]
   }
   
   
   para más info: 
   
   https://www.ibm.com/support/knowledgecenter/SS4GSP_6.2.0/com.ibm.udeploy.api.doc/topics/udclient_requestapplicationprocess.html
