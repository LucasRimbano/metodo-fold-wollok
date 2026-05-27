


class Lista{

   const numeros = [1,2,3,4] 

   const listas = [[1, 2], [3, 4], [5]]

    method sumar(){

        return numeros.fold(0,{acumulador,numero => acumulador + numero}


        )
    }

    method multiplicar(){
        return numeros.fold(1,{acumulador,numero => acumulador * numero})
    }

    method encontrarMax(){

        return numeros.fold(numeros.first(), { maximo,numero =>
         [maximo,numero].sortedBy({n1,n2 => n2}).last()

        })
    }

    method invertirLista(){

        return numeros.fold([], {acumulador,numero =>
        [numero]+ acumulador 
        })
    }

    method Triplecadalista(){

        return numeros.fold([],{acumulador,numero =>
         acumulador +[numero *3]
        })
    }

    method SolomultiplodeCinco(){

        return numeros.fold([],{acumulador,numero =>
             if (numero % 5 == 0) acumulador + [numero] else acumulador
        })
    }
 

    method hayAlgunMultiploDeDos() {
        return numeros.fold(false, { acumulador, numero =>
             acumulador || numero % 2 == 0
         })
    }

    method aplanarLista() {
        return listas.fold([], { acumulador, listaActual =>
        acumulador + listaActual
        })
  }

}

