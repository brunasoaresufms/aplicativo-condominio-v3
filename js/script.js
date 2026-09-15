// Este arquivo controla as partes interativas da aplicação.

// Botões "Entrar em contato" e "Tenho interesse"
const botoesContato = document.querySelectorAll(".contato");

botoesContato.forEach(function (botao) {

    botao.addEventListener("click", function () {

        const nome = botao.getAttribute("data-nome");

        alert("Mensagem simulada! Você entrou em contato com " + nome + ".");
    });

});


// Formulário de publicação
const formulario = document.getElementById("anuncioForm");

formulario.addEventListener("submit", function (event) {

    event.preventDefault();

    const tipo = document.getElementById("tipo").value;
    const titulo = document.getElementById("titulo").value;
    const mensagem = document.getElementById("mensagem");

    mensagem.textContent =
        "Anúncio de " + tipo.toLowerCase() +
        " "" + titulo + "" publicado com sucesso! (simulação)";

    mensagem.classList.remove("d-none");

    formulario.reset();
});
