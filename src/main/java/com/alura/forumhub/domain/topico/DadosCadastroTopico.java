package com.alura.forumhub.domain.topico;

import com.alura.forumhub.domain.autor.Autor;
import com.alura.forumhub.domain.curso.Curso;
import jakarta.validation.Valid;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;

import java.time.LocalDateTime;

public record DadosCadastroTopico(
        @NotBlank
        String titulo,
        @NotBlank
        String mensagem,

        LocalDateTime dataCriacao,
        @NotBlank
        String status,
        @NotNull
        @Valid
        Autor autor,
        @NotNull
        @Valid
        Curso curso
 ) {
}
