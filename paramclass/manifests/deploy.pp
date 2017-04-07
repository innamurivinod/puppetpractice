# Claparamclass::deploy
#
#
class paramclass::deploy ($decisionVariable = 0) {
     # resources
if $decisionVariable==0{
    notify { '0':}
}else{
    notify {'value':}
}
}
