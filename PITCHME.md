## Elixir para <span style="font-size:0.6em; color:gray">~~tontos~~</span> todos
---
## Elixir para <span style="font-size:0.6em; color:gray">~~tontos~~</span> todos
#### Objetivo
---
## ¿Quién soy yo?
#### Resumen: un tío normal, que hace cosas normales
#### A veces escribo en un blog: [www.charlascylon.com](www.charlascylon.com)
![Image-Absolute](img/avatar-icon.png)
---
#### ¿Y por qué lo de tontos?

+++?image=https://raw.githubusercontent.com/rubenfa/codenares_elixir/master/img/patricio1.jpg
---
#### Primer contacto con la programación funcional con Caml

![Image-Absolute](img/caml1.png)

- En la universidad |
- En el laboratorio de Programación avanzada  |
- **Curioso, pero inútil** |

---
#### ¿Y después de tantos años por qué volver a la programación funcional?
+++?image=https://raw.githubusercontent.com/rubenfa/codenares_elixir/master/img/awesome.jpg
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
![Image-Absolute](img/mindfuck.jpg)
---

#### Pues F\#

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
            
[<EntryPoint>]
let main argv = 
printfn "%A" numeros10
```
---
#### ¿Y cómo empecé con Elixir?

![Image-Absolute](img/mindfuck.jpg)
---
### ¿Qué es Elixir?
![Image-Absolute](img/valim.jpg)
- Creado por Jose Valim
- Funcional
- Dinámico
- Diseñado para hacer aplicaciones mantenibles y escalables
---
#### Vamos, que es otro frikilenguaje, ¿o sirve para algo?

- Elixir corre sobre la máquina virtual de Erlang (BEAM) (since 1986) 
- Puedes hacer aplicaciones backend
- Aplicaciones web con Phoenix (framework)

---
#### Por fin, una sintaxis funcional que entiendo
+++?image=https://raw.githubusercontent.com/rubenfa/codenares_elixir/master/img/patricio2.jpg
---


