--Promedio--
create function Promedio (@valor1 as decimal (10,2), @valor2 as decimal(10,2))
returns decimal(10,2)
as
begin
	declare @resultado decimal(10,2)
	set @resultado = (@valor1+@valor2)/2
	return @resultado
end

select dbo.Promedio(19,22) as promedio
go

print 'Promedio: ' + cast(dbo.Promedio(19,22) as char(12))

--Fecha--
if OBJECT_ID('fechatxt') is not null
begin
	drop function fecha
end
go

create function fechatxt (@fecha as date)
returns varchar(20)
as
begin
	declare @resultado varchar(20)
	set @resultado= CONCAT(day(@fecha),' de ', DATENAME(month,@fecha),' de ',year(@fecha))
	return @resultado
end

select dbo.fechatxt('1997-12-20') as [Fecha de nacimiento]
go