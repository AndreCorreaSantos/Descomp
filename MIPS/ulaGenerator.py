
out = ""
for i in range(1,32):
    out += f"""

        SOMABIT{i}: entity work.somaBit
        port map (
            entradaA => entradaA({i}),
            entradaB => entradaB({i}),
            inverteA => inverteA,
            inverteB => inverteB,
            carryIn => carryOut({i-1}),
            seletor => seletor(1 downto 0),
            resultado => resultado({i}),
            carryOut => carryOut({i}),
            SLT => '0'
        );

    """

print(out)