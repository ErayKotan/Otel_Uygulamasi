select * from tbl_Personel
select * from tbl_Kullanici 
select * from tbl_KullaniciPersonel
select * from tbl_Musteriler
select * from tbl_MusteriMisafirsatis
select * from tbl_Rezervasyon
select * from tbl_RezervasyonTip
-----------------------------------------------------------------
create proc sp_musteri_Ekle    ------MUSTERÝ KAYIT
(
  @MusteriAd nvarchar(150)
, @MusteriSoyad nvarchar(150)
, @MusteriTCKimlik nvarchar(20)
, @MusteriPasaportNo nvarchar(20)
, @MusteriUnvan nvarchar(150)
, @MusteriYetkiliAdSoyad nvarchar(150)
, @MusteriVergiNo nvarchar(20)
, @MusteriVergiDairesi nvarchar(50)
, @MusteriTelefon nvarchar(20)
, @MusteriPosta nvarchar(250)
, @UlkeID int
, @IlID int 
, @IlceID int
, @MusteriAdres nvarchar(400)
, @MusteriKurumsalOK bit
, @DilID int
, @MusteriAciklama nvarchar(400)

)
as
begin

insert into tbl_Musteriler 
values 
(@MusteriAd , @MusteriSoyad , @MusteriTCKimlik , @MusteriPasaportNo , @MusteriUnvan , @MusteriYetkiliAdSoyad, @MusteriVergiNo , @MusteriVergiDairesi, @MusteriTelefon 
, @MusteriPosta, @MusteriAdres,@IlID, @IlceID , @UlkeID, @MusteriAciklama,  @MusteriKurumsalOK , @DilID)


end
-----------------------------------------------------------------
create proc sp_musteri_Guncelle    ------MUSTERÝ GUNCELLE
(
  @MusteriAd nvarchar(150)
, @MusteriSoyad nvarchar(150)
, @MusteriTCKimlik nvarchar(20)
, @MusteriPasaportNo nvarchar(20)
, @MusteriUnvan nvarchar(150)
, @MusteriYetkiliAdSoyad nvarchar(150)
, @MusteriVergiNo nvarchar(20)
, @MusteriVergiDairesi nvarchar(50)
, @MusteriTelefon nvarchar(20)
, @MusteriPosta nvarchar(250)
, @UlkeID int
, @IlID int 
, @IlceID int
, @MusteriAdres nvarchar(400)
, @MusteriKurumsalOK bit
, @DilID int
, @MusteriAciklama nvarchar(400)

)
as
begin

update tbl_Musteriler set 
[MusteriAd]=@MusteriAd , [MusteriSoyad]=@MusteriSoyad , [MusteriTCKimlik]=@MusteriTCKimlik , [MusteriPasaportNo]=@MusteriPasaportNo , [MusteriUnvan]=@MusteriUnvan ,
[MusteriYetkiliAdSoyad]=@MusteriYetkiliAdSoyad, [MusteriVergiNo]=@MusteriVergiNo , [MusteriVergiDairesi]=@MusteriVergiDairesi, [MusteriTelefon]=@MusteriTelefon 
, [MusteriPosta]=@MusteriPosta, [MusteriAdres]=@MusteriAdres,[IlID]=@IlID, [IlceID]=@IlceID , [UlkeID]=@UlkeID, [MusteriAciklama]=@MusteriAciklama, 
[MusteriKurumsalOK]=@MusteriKurumsalOK , [DilID]=@DilID where MusteriTCKimlik=@MusteriTCKimlik


end
-----------------------------------------------------------------------
create proc sp_TarihlerArasiDurum
(
@ilktarih datetime,
@ikincitarih datetime
)
as 
begin

select OdaId from tbl_Satis
where (SatisOdaGirisTarihi between @ilktarih and @ikincitarih) or (SatisOdaCikisTarihi between @ilktarih and @ikincitarih) or
(SatisOdaGirisTarihi<@ilktarih and SatisOdaCikisTarihi>@ilktarih) or (SatisOdaGirisTarihi<@ikincitarih and SatisOdaCikisTarihi>@ikincitarih)
end

-----------------------------------------------------------------------
create proc sp_KampanyaEkle --YENÝ KAMPANYA EKLE
(
@kampanyaAd nvarchar(200),
@indirimorani int,
@ilktarih datetime,
@ikincitarih datetime,
@aciklama nvarchar(200)
)
as 
begin

insert into tbl_Kampanyalar ([KampanyaBilgileri], [KampanyaIndirimOran], [KampanyaBaslangicZaman], [KampanyaBitisTarihi], [KampanyaTanim])
values (@kampanyaAd,@indirimorani,@ilktarih,@ikincitarih,@aciklama)

end
-----------------------------------------------------------
create proc sp_KampanyaGuncelle --KAMPANYA GÜNCELLE
(
@kampanyaAd nvarchar(200),
@indirimorani int,
@ilktarih datetime,
@ikincitarih datetime,
@aciklama nvarchar(200)
)
as 
begin

update tbl_Kampanyalar set KampanyaBilgileri=@kampanyaAd,KampanyaIndirimOran=@indirimorani,KampanyaBaslangicZaman=@ilktarih,KampanyaBitisTarihi=@ikincitarih,KampanyaTanim=@aciklama where KampanyaBilgileri=@kampanyaAd

end
---------------------------------------------------------------
select * from tbl_Kampanyalar