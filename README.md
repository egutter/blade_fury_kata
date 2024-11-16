# BladeFury

Different Kata solutions proposed in this [blog post]().

## The Kata
Write a battle game where two warriors fight each other. The warrior with the greatest power should be the winner. If both have the same power then the fight is a draw.

The warriors with their strength are:
* Samurai: 6
* Shaolin: 10
* Mongol: 4

Examples: 
* Samurai fights vs Shaolin, then Shaolin wins
* Samurai fights vs Samurai, then it is a draw

### Extra: weapons
Each warrior can optionally be armed with a weapon which causes damage to the opponent by increasing the warrior's power. 
The weapons and how they increase each warrior's power are:
| Weapon      | Samurai           | Shaolin           | Mongol | 
| ----------- | ----------------- | ----------------- | ------ |
| Katana      | Doubles the power | Adds 2            | Adds 1 |
| Jian        | Adds 2            | Doubles the power | Adds 4 |
| Axe         | Adds 2            | Adds 1            | Adds 6 |

Examples: 
* Samurai with Katana fights vs Shaolin, then Samurai wins
* Samurai with Katana fights vs Shaolin with Katana, then it is a draw

### Extra: armor

Each warrior can optionally be armed with a weapon which increases the warrior's power. The armor decreases the opponents power, only when the opponent is armed with a weapon.

The armors are:

* Shield: decreases opponent's power by 2
* Helmet: decreases opponent's power by 1

Examples: 
* Mongol with Shield fights vs Samurai, then the Samurai wins
* Samurai with Katana fights vs Shaolin with Shield, then it is a draw

### Extra: Scenes

Each battle takes place on a Scene. The scenes affects each warrior's power.

The scenes are:

* City: has no effect on any warrior
* Monk temple: increases Shaolin's power by 2
* Rice field: increases Samurai's power by 4
* Mountain: doubles Mongol's power

Examples: 
* Samurai with Katana fights vs Shaolin with Shield in a Monk temple, then the Shaolin wins
* Mongol with Axe fights vs Shaolin with Jia in the Mountain, then it is a draw

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `blade_fury` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:blade_fury, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at <https://hexdocs.pm/blade_fury>.

