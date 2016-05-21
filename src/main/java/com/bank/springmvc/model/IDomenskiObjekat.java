package com.bank.springmvc.model;

import java.sql.ResultSet;
import java.util.List;

public interface IDomenskiObjekat {
	
	public String vratiNazivTabele();

	public String vratiVrednostzaInsert();

	public List<IDomenskiObjekat> vratiListuNaOsnovuRS(ResultSet rs);

	public String vratiVrednostZaUpdate();

	public String vratiVrednostzaDelete();

	public String vratiNazivTabeleInsert();

	public String vratiNazivTabeleUslov();

	public String vratiSETzaUPDATE(IDomenskiObjekat ido);

	public String vratiUslovZaWhere(IDomenskiObjekat ido);
        
        public String vratiSQLZaDetalje(IDomenskiObjekat ido);

        public IDomenskiObjekat vratiObjekatNaOsnovuRS(ResultSet rs);
}
