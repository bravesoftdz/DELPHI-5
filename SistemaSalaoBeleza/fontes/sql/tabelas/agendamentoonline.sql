/*
Descri��o:
  Tabela utilizada para gravar os dados do agendamento on line

Hist�rico de altera��es:
  v1.00  - 10/06/2012 
    - Cria��o da tabela
    - Inclu�do a chave prim�ria id_uf_pk, os indices cd_uf_uq e ds_uf_uq e a chave estrangeira
    cd_usuario_fk.    
*/       
    	
CREATE TABLE "agendamentoonline" (
   "id_agendamentoonline" 	INTEGER NOT NULL 
    
  ,"fl_agendamentoonline" 	VARCHAR(  1)
  ,"tx_agendamentoonlineemail"  VARCHAR( 80) 
  ,"sn_agendamentoonlinesenha"  VARCHAR( 10)

  ,"cd_usuario"    	INTEGER NOT NULL  
  
  ,CONSTRAINT "id_agendamentoonline_pk" PRIMARY KEY ("id_agendamentoonline")  
  
  ,CONSTRAINT "tx_agendaonlineemail_uq" UNIQUE 	 ("tx_agendamentoonlineemail")
  ,CONSTRAINT "sn_agendaonlinesenha_uq" UNIQUE 	 ("sn_agendamentoonlinesenha")
  
  ,CONSTRAINT "cd_usuario_agentonline_fk" FOREIGN KEY ("cd_usuario") REFERENCES "usuarios"("id_usuario")
    ON DELETE NO ACTION ON UPDATE CASCADE  
);



CREATE GENERATOR "id_agentonline_agentonline_gn" ;
SET GENERATOR "id_agentonline_agentonline_gn" TO 0;
