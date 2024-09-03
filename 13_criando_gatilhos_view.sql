-- Definir o delimitador de comandos para $$, para que o MySQL saiba onde começa e termina o gatilho
DELIMITER $$
-- Criar o gatilho com o nome trg_atualiza_qtd_compra
create trigger trg_atualiza_qtd_compra
-- especificar que o gatilho deve ser acionado apos a inserção de um novo registro na tabela tb_prod_comp
after insert on tb_prod_comp
-- especificador que o gatilho deve ser acionado para que cada linha inserida
for each row
-- Iniciar o bloco de codigo do gatilho
begin
-- atualizar o campo compra_qtd_cod da tabela tb_compra
update tb_compra
-- aumentar o valor do compra_qtd_cod em 1
set compra_qtd_cod = compra_qtd_cod + 1
-- Especificar a condição para atualizar apenas a linha correspondente ao codigo de compra inserida
where compra_cod = new.compra_cod;
-- Terminar o bloco de codigo do gatilho
end$$
