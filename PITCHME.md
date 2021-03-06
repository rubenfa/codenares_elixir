## Elixir para <span style="font-size:0.6em; color:gray">~~tontos~~</span> todos
---
## ¿Quién soy yo?
#### Resumen: un tío normal, que hace cosas normales
#### A veces escribo en un blog: [www.charlascylon.com](www.charlascylon.com)
#### En Twitter soy @_rubenfa.
![Image-Absolute](img/avatar-icon.png)
---
## Elixir para <span style="font-size:0.6em; color:gray">~~tontos~~</span> todos
#### Objetivo
---

#### ¿Y por qué lo de tontos?

+++?image=https://raw.githubusercontent.com/rubenfa/codenares_elixir/master/img/patricio1.jpg
---
#### Primer contacto con la programación funcional con Caml

![Image-Absolute](img/caml1.png)

- En la universidad 
- En el laboratorio de Programación avanzada  
- **Curioso, pero inútil** 

---
#### ¿Y después de tantos años por qué volver a la programación funcional?
+++?image=https://raw.githubusercontent.com/rubenfa/codenares_elixir/master/img/executive_patricio.jpg
---

### ¿Pero qué lenguaje elegir?

---

#### ¿Haskell?

```
fib n = go n (0,1)
  where
    go !n (!a, !b) | n==0      = a
                   | otherwise = go (n-1) (b, a+b)
```

---

#### ¿Erlang?

```
-compile(export_all).
fib_p(0)->0;
fib_p(1)->1;
fib_p(N)->fib_p(N-1)+fib_p(N-2).
%% with guards
fib_g(N) when N == 0 ->0;
fib_g(N) when N == 1->1;
fib_g(N) when N >= 2 -> fib_g(N-1)+fib_g(N-2).
%% tail recursion
tail_fib_h(End,N,LastFib,SecondLastFib) ->
  case N of
    End -> LastFib + SecondLastFib;
    0 -> tail_fib_h(End, 1, 0, 0) ;
    1 -> tail_fib_h(End, 2, 1, 0) ;
    _ -> tail_fib_h(End,N+1,SecondLastFib+LastFib,LastFib)
  end.
tail_fib(N)->
     tail_fib_h(N,0,0,0).
```

---
![Image-Absolute](img/DumbPatricio.png)
---

#### Pues Fsharp

```
let extraeDigitos x = 
    x/10, x - (x/10 *10)   

let sumaDigitos tupla = 
    let x, y = tupla
    x + y
        
let numeros10 = 
    [
        for i in 11..99 do
            if (sumaDigitos (extraeDigitos i)) = 10 then
                yield i
    ]
```
---
#### ¿Y cómo empecé con Elixir?

![Image-Absolute](img/twitter.png)
---
### ¿Qué es Elixir?
![Image-Absolute](img/valim.jpg)
- Creado por Jose Valim
- Funcional
- Dinámico
- Diseñado para hacer aplicaciones mantenibles y escalables
---
### Características típicas de la programación funcional
- Inmutable
- Las funciones son miembros de primera clase
- Recursividad
---
#### Vamos, que es otro frikilenguaje, ¿o sirve para algo?

- Elixir corre sobre la máquina virtual de Erlang (BEAM) (since 1986) 
- Puedes hacer aplicaciones backend
- Aplicaciones web con Phoenix (framework)

---
#### Por fin, una sintaxis funcional que entiendo
+++?image=https://raw.githubusercontent.com/rubenfa/codenares_elixir/master/img/patricio2.jpg
---
#### IEX (Interactive Elixir)
![Image-Absolute](img/iex.png)
---
#### Elixir es de tipado dinámico
```
iex(2)> 1 + 1
2
iex(3)> 1 + "1"
** (ArithmeticError) bad argument in arithmetic expression
    :erlang.+(1, "1")
iex(3)> 
```
---
### TIPOS
#### Atoms
```
iex(9)> :uno
:uno
iex(10)> :dos
:dos
iex(11)> :uno == String.to_atom("uno")
true
```
---
### TIPOS
#### Listas
```
iex(14)> [1,2, true, "cuatro", 5]
[1, 2, true, "cuatro", 5]
iex(15)> [1,2,6,7] ++ [4,5]
[1, 2, 6, 7, 4, 5]
iex(16)> [1,2,true,3,4,false] -- [true,false]
[1, 2, 3, 4]
``` 
---
### TIPOS
#### Tuplas

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
@[1-2]
@[3-4]
@[5-10]
---
### TIPOS
#### Listas clave valor

``` elixir
iex(23)> [{:nombre, "Rubén"}, {:apellido,"Fernández"}, {:edad, 22}]
[nombre: "Rubén", apellido: "Fernández", edad: 22]
iex(24)> [nombre: "Rubén", apellido: "Fernández", edad: 22]
[nombre: "Rubén", apellido: "Fernández", edad: 22]
iex(25)> persona = [nombre: "Rubén", apellido: "Fernández", edad: 22]
[nombre: "Rubén", apellido: "Fernández", edad: 22]
iex(26)> persona[:nombre]
"Rubén"
```
@[1-2]
@[3-4]
@[5-8]

---
### TIPOS
#### Maps

``` elixir
iex(27)> %{ :nombre => "Rubén", "apellido" => "Fernández", 22 => false} 
%{22 => false, :nombre => "Rubén", "apellido" => "Fernández"}
iex(29)> persona = %{ :nombre => "Rubén", "apellido" => "Fernández", 22 => false}
%{22 => false, :nombre => "Rubén", "apellido" => "Fernández"}
iex(30)> persona[22]
false
```
---
### TIPOS
#### Estructuras

```elixir
defmodule Persona do
    defstruct nombre: "", apellido: "", edad: 0
end
```

```
iex(2)> persona = %Persona{nombre: "Rubén", apellido: "Fernández", edad: 22}
%Persona{apellido: "Fernández", edad: 22, nombre: "Rubén"}
iex(3)> persona.edad
22
iex(4)> persona.nombre
"Rubén"
```
---
#### Elixir se organiza en módulos y funciones

```
defmodule Codenares.HelloWorld do
  def hello() do   
    IO.puts("Hello world")
  end

  def hello(msg) do   
    IO.puts("Hello world: #{msg}")
  end
end
```
```
Codenares.HelloWorld.hello/0
Codenares.HelloWorld.hello/1
```
---

```
defmodule Codenares.HelloWorld do

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
@[7-14]
---
#### Entonces descubrí el Pattern Matching
![Image-Absolute](img/pattern-matching.jpg)
---
#### Pattern Matching (cláusulas de guarda)
```
defmodule Codenares.PatternMatching.HelloWorld do

  def hello(selection) do   
    get_message(selection)
  end

  defp get_message(s) when s == 0, do: IO.puts("Hello world")
  defp get_message(s) when s == 1, do: IO.puts("Hello Codenares")
  defp get_message(s) when s == 2, do: IO.puts("Hello Torrejón")
  defp get_message(s), do: {:error, "Message not found"} 

end
```
@[7-9]
@[10]
---
#### Pattern Matching (tuplas)
```
defmodule Codenares.PatternMatching.Tuples do

  def calculate({:sum, x, y}), do: x + y
  def calculate({:res, x, y}), do: x - y
  def calculate({:mul, x, y}), do: x * y
  def calculate({:div, x, y}), do: x / y
  def calculate(other), do: {:error, "Operation not valid"}

end
```
@[3-6]
@[7]

---

#### Pattern Matching (listas)
```elixir
defmodule Codenares.PatternMatching.Lists do

  def sum([]), do: 0
  def sum([head | []]), do: head 
  def sum([head |tail]), do:  head + sum(tail)
 
end
```

---

#### Pattern Matching (estructuras)
```
defmodule Codenares.PatternMatching.Player do
  defstruct name: "", level: 1, type: :warrior, health: 100, alive: true

  alias Codenares.PatternMatching.Player

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
@[6-12]
@[14-20]

---
#### En definitiva el pattern matching es magia

![Image-Absolute](img/bob.jpg)

---

#### ¿Estoy pensando en programación funcional?
+++?image=https://raw.githubusercontent.com/rubenfa/codenares_elixir/master/img/patricio3.jpg
---
#### La programación funcional va de transformar datos
![Image-Absolute](img/functional-thinking.png)
<span style="font-size:0.6em; color:gray">See <a href="https://pragprog.com/book/elixir/programming-elixir" target="_blank"> Programming Elixir by Dave Thomas</a> </span>
---

```
defmodule Codenares.Pipe.PipeOperator do

@doc """
Función que coge un número entero y:
 - extrae sus dígitos
 - filtra los dígitos pares
 - los multiplica por 3
 - los da la vuelta 
 - devuelve un string con el resultado

Ejemplo:

Codenares.Pipe.PipeOperator.pipe(123456)
"18126"
"""

require Integer

  def no_pipe(n) when is_integer(n) do
    Enum.join(
      Enum.reverse(
        Enum.map(
          Enum.filter(
            Integer.digits(n), fn(x) -> 
              Integer.is_even(x) end , fn(x) -> x * 3 end
              ))))
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

@[3-15]
@[29-36]
@[19-27]
@[38-45]
---

### Elixir avanzado

![Image-Absolute](img/doctor_patricio.jpg)

---

#### OTP (Open Telecom Platform)

- Conjunto de librerías y herramientas utilizadas para gestionar sistemas distribuidos.
- Inicialmente pensado para gestionar centralitas telefónicas.
- Utiliza un modelo de actores para gestionar concurrencia.

---

#### Modelo de actores

![Image-Absolute](img/ActorModel.png)

<span style="font-size:0.6em; color:gray">See <a href="http://blog.scottlogic.com/2014/08/15/using-akka-and-scala-to-render-a-mandelbrot-set.html" target="_blank">http://blog.scottlogic.com/2014/08/15/using-akka-and-scala-to-render-a-mandelbrot-set.html</a> </span>

---
```elixir
defmodule Codenares.OTP.Calculator do
  use GenServer

  # INTERFACE
  def start_link(current, name) do
    GenServer.start_link(__MODULE__, current, name: name )
  end

  def add(p_name, n) when is_number(n) do
    GenServer.cast(p_name, {:add, n})
  end

  def sub(p_name, n) when is_number(n) do
    GenServer.cast(p_name, {:sub, n})
  end

  def mult(p_name, n) when is_number(n) do
    GenServer.call(p_name, {:mult, n})
  end

  def div(p_name, n) when is_number(n) do
    GenServer.call(p_name, {:div, n})
  end

  def get_current(p_name) do    
    GenServer.call(p_name, :current)
  end

  def stop do
    GenServer.stop(:calculator)
  end

  # IMPLEMENTACIÓN GenServer

  def handle_call(:current, _from, current) do
    {:reply, current, current}
  end

  def handle_call({:div, n}, _from, current) do
    {:reply, current / n, current / n}
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

  def terminate(reason, _status) do
    IO.puts "Stop because #{inspect reason}"
    :ok 
  end 
end
```

@[35-45]
@[47-53]
@[5-7]
@[17-27]
@[9-15]
---

#### Un ejemplo en funcionamiento

![Image-Absolute](img/iex-genserver.png)

---

#### Let it crash, Fail fast

- Los procesos en Elixir/Erlang tienen muy poco coste
- Podemos levantar miles de  procesos en segundos
- Los procesos son independientes y no comparten información
- Por tanto **nos da igual que fallen**

---

### Supervisores

```
defmodule Codenares.OTP.Supervisor do
  use Supervisor

  alias Codenares.OTP.Calculator

  def start_link do
    Supervisor.start_link(__MODULE__, [], name: :supervisor)
  end

  def start_calculator(name) do
    Supervisor.start_child(:supervisor, [name])
  end

  def init([]) do
    children = [
      worker(Calculator, [0], [restart: :transient]) 
    ]

    supervise(children, strategy: :simple_one_for_one)
  end

  def start_n_calculators(number) do
     for n <- 1..number, do: start_calculator(String.to_atom("Calc_" <> to_string(n)    ))
  end
end
```

@[14-20]
@[10-12]
@[22-24]
---

#### No hay que tener miedo a lanzar procesos

+++?image=https://raw.githubusercontent.com/rubenfa/codenares_elixir/master/img/bob-clones.png

---

#### Tememos herramientas de monitorización y debug

![Image-Absolute](img/observer.png)

---
#### Otras cosas buenas de Elixir

- **ExUnit**: framework para testing incluido de serie
- **Mix**: herramienta para gestionarl las builds. Crea proyectos, compila, ejecuta tests, descarga dependencias ...
- **Hex**: gestor de paquetes para Elixir y Erlang (estilo npm, Nuget o Maven)
- **Macros**: podemos ampliar Elixir a nuestro gusto con metaprogramación

---

#### Gracias por escuchar. ¿Preguntas?

![Image-Absolute](img/bob-gafas.jpg)

 <span style="font-size:0.7em"> **Slides en: ** [https://gitpitch.com/rubenfa/codenares_elixir](https://gitpitch.com/rubenfa/codenares_elixir)</span>
 <br/>
 <span style="font-size:0.7em"> **Ejemplos en: ** [https://github.com/rubenfa/codenares_elixir](https://github.com/rubenfa/codenares_elixir)</span>


