
/* Este arquivo controla as partes interativas da aplicação. */

// Botões "Entrar em contato" e "Tenho interesse"
const botoesContato = document.querySelectorAll(".contato");

botoesContato.forEach(function (botao) {
    botao.addEventListener("click", function (event) {
        event.preventDefault();

        const nome = botao.getAttribute("data-nome");
        const textoBotao = botao.textContent.trim().toLowerCase();

        if (textoBotao.includes("entrar em contato")) {
            alert(
                "Contato simulado!\n\n" +
                "Você demonstrou interesse em entrar em contato com " +
                (nome || "o anunciante") +
                ". Esta função ainda não envia mensagens reais."
            );
        } else if (textoBotao.includes("tenho interesse")) {
            alert(
                "Interesse registrado apenas nesta simulação!\n\n" +
                "Você demonstrou interesse em " +
                (nome || "este anúncio") +
                ". Nenhum dado foi enviado ou salvo."
            );
        } else {
            alert(
                "Ação demonstrativa do CondoFácil. " +
                "Esta funcionalidade ainda não está integrada."
            );
        }
    });
});

// Formulário de publicação de anúncio
const formulario = document.getElementById("anuncioForm");

if (formulario) {
    formulario.addEventListener("submit", function (event) {
        event.preventDefault();

        const campoTipo = document.getElementById("tipo");
        const campoTitulo = document.getElementById("titulo");
        const mensagem = document.getElementById("mensagem");

        if (!campoTipo || !campoTitulo || !mensagem) {
            alert("Não foi possível localizar todos os campos do formulário.");
            return;
        }

        const tipo = campoTipo.value;
        const titulo = campoTitulo.value.trim();

        if (!tipo || !titulo) {
            alert("Preencha o tipo e o título do anúncio.");
            return;
        }

        mensagem.textContent =
            'Anúncio de ' + tipo.toLowerCase() +
            ' "' + titulo + '" publicado com sucesso! (simulação)';

        mensagem.classList.remove("d-none");

        formulario.reset();
    });
}
