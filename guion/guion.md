## ELIXIR PARA ~~TONTOS~~ TODOS

### Objetivo de la charla

Me llamo Rubén Fernández y quiero confesaros algo: soy un tío normal. Tengo un trabajo normal, en el que hago cosas normales. Yo no hago aplicaciones que van a utilizar miles de usuarios cada segundo. Eso es lo que hacen los ninjas-rockstar-developers. 

De hecho yo diría que soy un poco tonto. En serio, a mi me cuesta aprender las cosas complicadas, como la programación funcional. Y por eso he titulado así la charla, ya que si yo estoy pudiendo aprender programación funcional con Elixir, cualquiera puede. Así que hoy os voy a hablar un poco de Elixir, con el objetivo, de que os pique un poco el gusanillo y queráis aprenderlo también.

## Primer contacto con la programación funcional

Mi primer contacto con la programación funcional, fue aquí en la universidad de Alcalá. No sé como estarán las cosas ahora con los grados, pero en mis tiempos teníamos una asignatura, que se llamaba Programación Avanzada. En el laboratorio, teníamos que hacer tres prácticas para presentar a final de curso: una de programación distribuida, otra de programación concurrente y otra de programación funcional. La funcional la hicimos con CAML. La sintaxis me parecía magia negra, pero fue divertido. Al final de la práctica me quedé con la sensación de que aquello no valía para hacer nada serio.

## Explosión de la prog. funcional.

Pasaron los años, terminé la carrera (muchos muchos años después), y me puse a trabajar. Yo acabé programando en entornos .NET, con C# y a veces con Visual Basic .NET (por desgracia). Y lo más cerca que estuve de la programación funcional, fue porque hice algún método recursivo.

Y entonces en las noticias empiezas a leer cosas maravillosas de la programación funcional. Que si los tipos de Whatsapp, gestionan millones de usuarios con dos servidores y cuatro personas. Que si Scala es Java, pero mejor. Que si Haskell es el lenguaje de los tipos duros. Así que al final te pica el gusanillo y decides aprender. 

> Whatsapp: When the company was acquired by Facebook, it had 35 engineers and reached more than 450 million users
> 5 reasons why Scala is better than Java

## Mi primera elección fue F#

Como venía de .NET la primera elección fue F#. NO sé si lo conocéis, pero es el lenguaje funcional (o multiparadigma en este caso) de Microsoft . Me compré un libro y me puse a practicar resolviendo problemas del proyecto Euler. Cuando tuve alguno, lo compartí por Twitter, muy emocionado, y algunos cracks de esto me dijeron, que sí, que estaba muy bien, pero que lo que había hecho no era muy funcional ya que parecía más programación imperativa. Al final me atasqué con F# y lo dejé un poco abandonado.

## El problema de los lenguajes funcionales

Y es que para mí el principal problema de los lenguajes funcionales es la sintaxis. Ya os he dicho que yo soy muy bruto, y si las cosas no son sencillas me cuesta mucho entenderlas. Pero es que la sintaxis de la mayoría de los lenguajes funcionales, me parece demasiado esotérica. Es como magia negra.

## Empezar con Elixir

Elixir lo conocí de casualidad. Quería aprender algo fuera de la plataforma .NET. Quería algo que no necesitara usar Visual Studio y que fuera totalmente diferente. La moda por entonces era Node.js y es lo que estaba dispuesto a aprender. Menos mal que me libré por los pelos. Pregunté en Twitter qué lenguaje/plataforma aprenderían. Juanma (aka gulnor), que es un fenómeno, y tiene un blog que es oro puro, me dijo esto:

> https://twitter.com/_rubenfa/status/672159424719552517

Clojure lo conocía de oídas, porque gulnor es muy fan y suele hablar de él. Erlang lo conoce todo el mundo, pero su sintaxis es magia negra. ¿Y Elixir? ¿Eso qué narices es? Así que me puse a investigar.

## Elixir

Elixir es un lenguaje dinámico y funcional, creado por Jose Valim. Jose viene del mundo de Ruby por lo que la sintaxis de Elixir es muy parecida a la de ese lenguaje. Como todo lenguaje funcional pues tiene las típicas caracteristicas. Los datos son inmutables, las funciones son miembros de primer orden etc. Además es Open Source, y cualquiera puede participar en el proyecto, y la comunidad está creciendo bastante con mucha gente involucrada. Sonaba bien, así que seguí investigando.

## Otro friki lenguaje

Lo primero que pensé fue que Elixir era otro friki lenguaje para pasar el rato. Es decir, algo que un tío se había inventado en sus ratos libres, y que estaría lejos de ser usable para proyectos reales. Pues me equivocaba. Aunque Elixir es un lenguaje que ha inventado un tío en sus ratos libres, resulta que el tío lo ha hecho bien. Elixir corre sobre la máquina virtual de Erlang (BEAM). Esto es muy importante porque Erlang lleva con nosotros desde 1986. Así que como se suele decir, vamos subidos a hombros de gigantes. 

## ¿Sirve para algo?

Aunque como dice mi padre "el saber no tiene lugar", tampoco apetece mucho aprender algo que no va a tener ninguna utilidad práctica. Al final somos programadores y nos gusta hacer cosas que podamos enseñar a la gente ¿no?. Pues Elixir sirve para muchas cosas. Como lenguaje de backend podemos hacer cosas muy interesantes del lado del servidor. Pero además existe un web framework que se llama Phoenix, que permite hacer aplicaciones web. Luego os hablo un poco más de él.

## Una sintaxis funcional que entiendo

Empecé a ver la sintaxis de  Elixir y me llevé una sorpresa. Resultaba que al ser una sintaxis tipo Ruby, era muy fácil de entender. Era algo que a pesar de ser funcional comprendía sin mucha dificultad. Había encontrado mi media naranja funcional. Así que me decidí a aprenderlo. Y estas son las cosas que he ido descubriendo

## REPL

Como buen lenguaje funcional, Elixir tiene un REPL (Read-Eval-Print-Loop) disponible. Esto quiere decir que tenemos una consola en la que podemos introducir comandos de Elixir y hacer un programa desde cero. Es genial para probar cosas y recibir feedback rápido. Todos los ejemplos que veais en la presentación, están hechos con la consola


## Elixir es de tipado dinámico

Elixir es de tipado dinámico, por lo que los tipos de las variables se definen en tiempo de ejecución. Es lo mismo que pasa en Javascript. Lo único que el tipado de Elixir es más fuerte que en JavaScript. Por ejemplo, no puedes sumar un string y un número porque da error.

```
iex(2)> 1 + 1
2
iex(3)> 1 + "1"
** (ArithmeticError) bad argument in arithmetic expression
    :erlang.+(1, "1")
iex(3)> 
```

## Más allá de los tipos básicos

Además de los tipos básicos tenemos otros tipos más complejos que nos ayudan a modelar nuestras soluciones. 

Tenemos atoms, que a mi me parecen una maravilla. Es una forma de definir una especie de constantes cuyo valor es el propio nombre del atom. En Elixir se utilizan mucho y son muy útiles

```
iex(9)> :uno
:uno
iex(10)> :dos
:dos
iex(11)> :uno == String.to_atom("uno")
true
```

Tenemos las listas que se definen con corchetes y pueden contener elementos de cualquier tipo. A las listas se les pueden sumar elementos, restar elementos etc.

```
iex(14)> [1,2, true, "cuatro", 5]
[1, 2, true, "cuatro", 5]
iex(15)> [1,2,6,7] ++ [4,5]
[1, 2, 6, 7, 4, 5]
iex(16)> [1,2,true,3,4,false] -- [true,false]
[1, 2, 3, 4]
``` 

Tenemos las tuplas, definidas entre llaves, que permiten guardar valores de diferentes tipos, aunque suelen ser elementos relacionados de alguna forma. En el ejemplo podemos ver el que podría ser el resultado de una función. También vemos en el ejemplo que las tuplas se pueden descomponer en elementos lo cual es muy útil.

``` elixir
result = {1, :error, "Variable not found"}
{1, :error, "Variable not found"}
iex(19)> {result_value, result_atom, result_message} = result
{1, :error, "Variable not found"}
iex(20)> result_value
1
iex(21)> result_atom
:error
iex(22)> result_message
"Variable not found"
``` 

Tenemos las listas clave-valor o kewyord list. Su composición es como la del primer ejemplo, pero como es un poco coñazo poner tantas llaves, Elixir permite utilizar la segunda que es más fácil. Para acceder a los elementos de una lista, tenemos que utilizar

``` elixir
iex(23)> [{:nombre, "Rubén"}, {:appellido,"Fernández"}, {:edad, 22}]
[nombre: "Rubén", appellido: "Fernández", edad: 22]
iex(24)> [nombre: "Rubén", appellido: "Fernández", edad: 22]
[nombre: "Rubén", appellido: "Fernández", edad: 22]
iex(25)> persona = [nombre: "Rubén", appellido: "Fernández", edad: 22]
[nombre: "Rubén", appellido: "Fernández", edad: 22]
iex(26)> persona[:nombre]
"Rubén"
```

Tenemos también los maps que son parecidos a las listas clave-valor, solo que no es necesario utilizar atoms para las claves

``` elixir
iex(27)> %{ :nombre => "Rubén", "appellido" => "Fernández", 22 => false} 
%{22 => false, :nombre => "Rubén", "appellido" => "Fernández"}
iex(29)> persona = %{ :nombre => "Rubén", "appellido" => "Fernández", 22 => false}
%{22 => false, :nombre => "Rubén", "appellido" => "Fernández"}
iex(30)> persona[22]
false
```

Y para finalizar tenemos las estructuras, que son una evolución de los maps. Para usar estructuras hay que definirlas en un módulo con el nombre que queramos darle a la estructura.

```elixir
defmodule Persona do
    defstruct nombre: "", apellido: "", edad: 0
end
```

```elixir
iex(2)> persona = %Persona{nombre: "Rubén", appellido: "Fernández", edad: 22}
%Persona{appellido: "Fernández", edad: 22, nombre: "Rubén"}
iex(3)> persona.edad
22
iex(4)> persona.nombre
"Rubén"
```

## Elixir se organiza en módulos y funciones

Como ya he comentado antes, Elixir tiene una sintaxis muy parecida a la de Ruby. En este caso el código de Elixir se organiza en módulos, y dentro de estos módulos se definen funciones, que pueden ser públicas o pueden ser privadas. Aquí tenéis una tontada de ejemplo que imprime un mensaje en pantalla según el parámetro que entre. La primera función, `hello` es pública y se puede llamar desde otros módulos. La otra, definida con `defp` es interna y solo se puede usar dentro del propio módulo.

```elixir
defmodule MyModules.HelloWorld do

  def hello(selection) do   
    get_message(selection)
  end

  defp get_message(s) do
    cond do
      s == 0 -> IO.puts("Hello world")
      s == 1 -> IO.puts("Hello Codenares")
      s == 2 -> IO.puts("Hello Torrejon")
      true -> {:error, "Message not found"}
    end
  end
end
```

## Pattern matching

Y entonces empecé a descubrir la magia de Elixir: el pattern matching. 

```elixir
defmodule MyModules.PatternMatching.HelloWorld do

  def hello(selection) do   
    get_message(selection)
  end

  defp get_message(s) when s == 0 do
    IO.puts("Hello world")
  end

  defp get_message(s) when s == 1 do
    IO.puts("Hello Codenares")
  end

  defp get_message(s) when s == 2 do
    IO.puts("Hello Torrejón")
  end

  defp get_message(s) do
    {:error, "Message not found"}
  end
end
```

```elixir
defmodule MyModules.PatternMatching.HelloWorld do

  def hello(selection) do   
    get_message(selection)
  end

  defp get_message(s) when s == 0, do: IO.puts("Hello world")
  defp get_message(s) when s == 1, do: IO.puts("Hello Codenares")
  defp get_message(s) when s == 2, do: IO.puts("Hello Torrejón")
  defp get_message(s), do: {:error, "Message not found"} 

end
```

## Pattern matching

```elixir
defmodule MyModules.PatternMatching.Tuples do

  def calculate({:sum, x, y}), do:  x + y
  def calculate({:res, x, y}), do: x - y
  def calculate({:mul, x, y}), do: x * y
  def calculate({:div, x, y}), do: x / y
  def calculate(other), do: {:error, "Operation not valid"}

end
```

## Pattern matching

```elixir
defmodule MyModules.PatternMatching.Lists do

  def sum([]), do: 0
  def sum([head | []]), do: head 
  def sum([head |tail]), do:  head + sum(tail)
 
end
```

## Pattern matching

```elixir
defmodule MyModules.PatternMatching.Player do
  defstruct name: "", level: 1, type: :warrior, health: 100, alive: true

  alias MyModules.PatternMatching.Player

  def attack(%Player{alive: false}, _, _ ) do
    {:error, "A dead player cannot attack"}
  end

  def attack(_,  %Player{alive: false}, _ ) do
    {:error, "A player cannot attack a dead player"}
  end

  def attack(p1 = %Player{type: :warrior}, p2 = %Player{type: :wizard}, damage) do
    update_health(p2, damage*2)
  end

  def attack(_, p2 = %Player{}, damage) do
    update_health(p2, damage)
  end

  defp update_health(p = %Player{health: h}, damage) when h <= damage do
    %{p | health: 0, alive: false}
  end

  defp update_health(p = %Player{health: h}, damage)  do
    %{p | health: (p.health - damage)}
  end
end
```


# Pipe operator

```elixir
defmodule MyModules.Pipe.PipeOperator do

@doc """
Función que coge un número entero, extrae sus dígitos, filtra los dígitos pares, los multiplica por 3, los da la vuelta y devuelve un string con el resultado

Ejemplo:

MyModules.Pipe.PipeOperator.pipe(123456)
"18126"
"""

require Integer

  def no_pipe(n) when is_integer(n) do
    Enum.join(Enum.reverse(Enum.map(Enum.filter(Integer.digits(n), fn(x) -> Integer.is_even(x) end , fn(x) -> x * 3 end))))
  end

  def no_pipe2(n) when is_integer(n) do
    digits = Integer.digits(n)
    filtered = Enum.filter(fn(x)-> Integer.is_even(x) end )
    digitsX = Enum.map(filtered, fn(x) -> x * 3  end)
    reversed = Enum.reverse(digitsX)
    s = Enum.join(reversed)
    Integer.parse(s)
  end

  def pipe(n) when is_integer(n) do
    n
    |> Integer.digits
    |> Enum.filter(fn(x) -> Integer.is_even(x) end)
    |> Enum.map(fn(x)-> x * 3 end)
    |> Enum.reverse
    |> Enum.join
  end

end
```

## Librerías


## Macros

```elixir
defmodule MyModules.Macros do
  defmacro my_if(expr, do: if_block), do: if(expr, do: if_block, else: nil)
  defmacro my_if(expr, do: if_block, else: else_block) do
    quote do
      case unquote(expr) do
        result when result in [false, nil] -> unquote(else_block)
        _ -> unquote(if_block)
      end
    end
  end
end
```

```elixir
import MyModules.Macros

my_if 1==1 do
  "Yes"
else
  "No"
end
```

Pero la primera regla de las macros es que no hay que usar las macros. 

## OTP (Open Telecom Platform)

Como dije al principio, Elixir utiliza la máquina virtual de Erlang, que como sabéis es un lenguaje que fue concebido para operar sobre centralitas telefónicas. Esto ha hecho que Erlang, y por tanto Elixir, sean muy robustos y eficientes a la hora de manejar sistemas distribuidos. OTP es el conjunto de librerías que se utilizan para gestionar este tipo de sistemas.

La idea es que Elixir puede lanzar procesos muy sencillos (nada que ver con los pesados procesos de otros sistemas) y estos se pueden comunicar mediante el paso de mensajes. Como no comparten ningún tipo de estado, y Elixir es inmutable, esto hace que sea genial para sistemas distribuidos. Para ello se puede usar GenServer, que nos permite abstraer el funcionamiento de estos procesos de manera sencilla.

```elixir
defmodule Codenares.OTP.Calculator do
  use GenServer

  # INTERFACE
  def start_link(current) do
    GenServer.start_link(__MODULE__, current, name: __MODULE__ )
  end

  def add(n) when is_number(n) do
    GenServer.cast(__MODULE__, {:add, n})
  end

  def sub(n) when is_number(n) do
    GenServer.cast(__MODULE__, {:sub, n})
  end

  def mult(n) when is_number(n) do
    GenServer.call(__MODULE__, {:mult, n})
  end

  def div(n) when is_number(n) do
    GenServer.call(__MODULE__, {:div, n})
  end

  def get_current do    
    GenServer.call(__MODULE__, :current)
  end

  def stop do
    GenServer.stop(__MODULE__)
  end

  # IMPLEMENTACIÓN GenServer

  def handle_call(:current, _from, current) do
    {:reply, current, current}
  end

  def handle_call({:div, n}, _from, current) do
    {:reply, current / n1, current / n}
  end

  def handle_call({:mult, n}, _from, current) do
    {:reply, current * n, current * n}
  end

  def handle_cast({:add, n}, current) do
    {:noreply, current + n }
  end

  def handle_cast({:sub, n}, current) do
    {:noreply, current - n }
  end
end
```


## Fail fast

Como los procesos son muy baratos, en Elixir se utiliza mucho el concepto **FAIL FAST**. Es decir que si se produce un error en un proceso, en lugar de enterrarlo bajo try-catch, lo que hacemos es dejar morir el proceso y lanzar uno nuevo. Y es ahí donde entra el concepto de supervisor. Para hacer esto se utilizan los procesos supervisores que dependiendo de la política que tengan configurada pueden hacer que los procesos que dependen de él se ejecuten de una manera u otra

    :one_for_one - if a child process terminates, only that process is restarted.

    :one_for_all - if a child process terminates, all other child processes are terminated and then all child processes (including the terminated one) are restarted.

    :rest_for_one - if a child process terminates, the “rest” of the child processes, i.e., the child processes after the terminated one in start order, are terminated. Then the terminated child process and the rest of the child processes are restarted.

    :simple_one_for_one - similar to :one_for_one but suits better when dynamically attaching children. This strategy requires the supervisor specification to contain only one child. Many functions in this module behave slightly differently when this strategy is used.







:observer.start

