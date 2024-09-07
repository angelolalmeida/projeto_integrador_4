select em.cnpj_basico,
  n.codigo as codigo_natureza_juridica,
  n.nome_natureza_juridica,
  q.codigo as codigo_qualificacao_socios,
  q.nome_qualificacao,
  em.capital_social,
  em.porte_da_empresa,
  case
    when em.porte_da_empresa = '00' then '00 – NÃO INFORMADO'
    when em.porte_da_empresa = '01' then '01 - MICRO EMPRESA'
    when em.porte_da_empresa = '03' then '03 - EMPRESA DE PEQUENO PORTE'
    when em.porte_da_empresa = '05' then '05 - DEMAIS'
    else '99 - DESCONHECIDO'
  end as nome_porte_empresa,
  et.cnpj_ordem,
  et.cnpj_dv,
  et.situacao_cadastral,
  case
    when et.situacao_cadastral = '01' then '01 – NULA'
    when et.situacao_cadastral = '2' then '2 – ATIVA'
    when et.situacao_cadastral = '3' then '3 – SUSPENSA'
    when et.situacao_cadastral = '4' then '4 – INAPTA'
    when et.situacao_cadastral = '08' then '08 – BAIXADA'
    else '99 - DESCONHECIDO'
  end as nome_situacao_cadastral,
  et.data_situacao_cadastral,
  et.motivo_situacao_cadastral,
  case
    when et.situacao_cadastral = '01' then '01 – NULA'
    when et.situacao_cadastral = '2' then '2 – ATIVA'
    when et.situacao_cadastral = '3' then '3 – SUSPENSA'
    when et.situacao_cadastral = '4' then '4 – INAPTA'
    when et.situacao_cadastral = '08' then '08 – BAIXADA'
    else '99 - DESCONHECIDO'
  end as nome_motivo_situacao_cadastral,
  et.data_inicio_atividade,
  c.codigo as cnae,
  c.nome_cnae,
  et.bairro,
  et.cep,
  m.nome_cidade as municipio,
  et.uf,
  s.opcao_pelo_simples,
  s.data_de_opcao_pelo_simples,
  s.data_de_exclusao_do_simples,
  s.opcao_pelo_mei,
  s.data_de_opcao_pelo_mei,
  s.data_de_exclusao_do_mei,
  n.codigo as natureza_juridica,
  n.nome_natureza_juridica
from empresas em
  left join estabelecimentos et on et.cnpj_basico = em.cnpj_basico
  left join simples s on s.cnpj_basico = em.cnpj_basico
  left join naturezas_juridicas n on n.codigo::text = em.natureza_juridica
  left join qualificacoes_socios q on q.codigo::text = em.qualificacao_dos_socios
  left join cnae c on c.codigo::text = et.cnae_fiscal_principal
  left join municipios m on m.codigo::text = et.municipio
where m.codigo = 6661