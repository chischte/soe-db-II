
if(db_id('abo') is null)
begin
create database abo;
end
go

use abo;
go

drop table aboart;
go

create table aboart
(
    aboartID        int identity(1,1)   not null,
    abobezeichnung  varchar(20)         not null,
    abogebuehr      decimal(6,2)        
    
    constraint pk_aboart primary key(aboartID)
);
go