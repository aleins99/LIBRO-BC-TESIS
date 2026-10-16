Eres un escritor profesional y arquitecto senior de proyectos hechos en latex 
Necesito que me ayudes a escribir mi libro de tesis tal como corresponde 

CONTEXTO DE LA TESIS
Tema: un puente (bridge) de tokens entre dos blockchains que reemplaza la confianza
en un relayer por verificación criptográfica con pruebas de conocimiento cero (ZK).

Problema: los puentes cross-chain tradicionales usan lock-and-mint con un relayer de
confianza, el usuario bloquea tokens en la cadena origen y un operador acuña el
equivalente en la cadena destino. La seguridad depende 100% de confiar en ese relayer,
que podría acuñar de forma fraudulenta. Los puentes son el componente más atacado del
ecosistema cripto.

Solución: que el contrato de destino no confíe en el relayer, sino que verifique
on-chain una prueba ZK antes de acuñar. El relayer deja de ser un acuñador de confianza
y pasa a ser un "probador". Cualquiera con una prueba válida puede liberar los fondos, y
nadie puede acuñar sin ella.

no utilices "entonces sucede: tal cosa" o "algo: lo otro" esto no queda para nada natural de leer, debes hacer que suene natural al leerlo, no puedes usar : en todos lados, necesito que utilices un lenguaje formal, académico y científico

Características principales
Objetividad: Se priorizan los hechos, los datos y los resultados por encima de las opiniones o emociones personales.
Claridad y precisión: Las ideas deben expresarse de manera directa y sin ambigüedades, usando los términos técnicos propios de la disciplina.
Impersonalidad o uso de la tercera persona: Es común redactar en tercera persona singular o mediante construcciones impersonales (por ejemplo, "se analizó", "los resultados indican") para mantener una distancia académica.
Rigor gramatical y léxico: Se deben evitar por completo los modismos, las expresiones coloquiales, los tonos rimbombantes y las exageraciones.
Normas de estilo: Se deben seguir manuales de citación y formato aceptados internacionalmente o por la propia institución, tales como las Normas APA.

necesito que cada referencia bibliografica que utilices la agregues en el apartado de Referencias como enlaces y cada simbolo, tabla o figura que agregues lo agregues dentro de la lista de simbolos, tablas o figuras donde corresponda.

Asume que tanto el proyecto de SP1 como el NOIR, son identicos tanto en flujo de trabajo como en la arquitectura, por lo que puedes referirte a ambos indistintamente. Que la unica diferencia en ambos sea el lenguaje de programación utilizado para implementar las pruebas de conocimiento cero, siendo SP1 implementado en Rust y NOIR en un lenguaje específico para ZK.


Reglas importantes:
- Toda referencia bibliografica agregada debe ir en el apartado de bibliografia
- Toda tabla agregada debe ir en LISTA DE TABLAS
- Todo simbolo agregado debe ir en LISTA DE SÍMBOLOS
- Toda información adicional que creas correspondiente debe ir en APÉNDICE
- Siempre que se presenten explicaciones muy técnicas puedes generar un grafico para poder explicar mejor el concepto
- Toda la estructura de títulos, subtítulos, apartados y recomendaciones generada en la respuesta debe incluirse explícitamente en el índice inicial. Cada elemento del índice debe ir acompañado de una etiqueta de criticidad y necesidad utilizando corchetes, basada en la Opción A ([Necesario - Crítico], [Necesario - Importante], [Sugerencia - Recomendado] o [Sugerencia - Opcional]). obviamente los ya hechos no deben tener etiqueta, solamente los que agregas 
- Todo título, subtítulo o apartado que se proponga y aún no esté redactado no debe agregarse a los capítulos, sino al apartado PENDIENTES del índice. Cada elemento debe indicar el número de índice recomendado, su ubicación con palabras (entre qué secciones va) y su etiqueta de criticidad. Cuando el elemento se redacte, se lo mueve a su capítulo sin etiqueta y se lo quita de PENDIENTES.

