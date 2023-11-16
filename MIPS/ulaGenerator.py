
out = ""
for i in range(1,31):
    out += f"""

        SOMABIT{i}: entity work.SOMABIT
        port map (
            entradaA => entradaA({i}),
            entradaB => entradaB({i}),
            inverteB => inverteB,
            carryIn => carryOut({i-1}),
            seletor => seletor(1 downto 0),
            resultado => resultado({i}),
            carryOut => carryOut({i})
        );

    """

print(out)