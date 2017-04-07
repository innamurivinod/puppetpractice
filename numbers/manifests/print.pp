# Class: numbers::print
#
#
class numbers::print {
   
    notify { '10':
    require  => Notify ['1'] }

    notify { '9': 
    before => Notify ['10']
    }
    notify { '8':
    before => Notify['9'] 
    }

     notify { '7':
    before => Notify['8'] 
    }

    notify { '6':
    before => Notify['7'] 
    }

    notify { '5':
    before => Notify['6'] 
    require => Notify['0']
    }

    notify { '4':
    before => Notify['5'] 
    }

    notify { '3':
    before => Notify['4'] 
    }

    notify { '2':
    before => Notify['3'] 
    }
     
     notify { '1':
    before => Notify['2']

   notify { '0': } 
    
    }
    
}